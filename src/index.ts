import express from 'express'
import { performance } from 'perf_hooks'
import { Worker } from 'worker_threads';
const app = express()
const port = 3000

function fibonacci(n: number): number {
    if (n <= 1) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

function fibonacciInWorker(n: number) {
    return new Promise((resolve, reject) => {
        const worker = new Worker('./dist/fibonacciWorker.js', { workerData: n });

        worker.on('message', resolve);
        worker.on('error', reject);
        worker.on('exit', (code) => {
            if (code !== 0)
                reject(new Error(`Worker stopped with exit code ${code}`));
        });
    });
}

app.get('/worker', async (req, res) => {
    const start = performance.now();
    await fibonacciInWorker(42)
    await new Promise((resolve) => setTimeout(resolve, 2000))
    const end = performance.now();
    console.log(`Request took ${end - start}ms`)
    console.log('-------------------')
    res.send('Hello World!')
});

app.get('/', async (req, res) => {
    const start = performance.now();
    fibonacci(42)
    await new Promise((resolve) => setTimeout(resolve, 2000))
    const end = performance.now();
    console.log(`Request took ${end - start}ms`)
    console.log('-------------------')
    res.send('Hello World!')
})

app.get('/line', async (req, res) => {
    res.send(`=====================\n=====================\n=====================\n`)
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})