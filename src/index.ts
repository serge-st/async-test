import express from 'express'
import { performance } from 'perf_hooks'
import { Worker } from 'worker_threads';
import { SERVER_PORT } from './constants';

const app = express()

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
    const count = req.query.count || 1
    console.log(`Processing worker request ${count}`);
    performance.mark('start')
    const result = await fibonacciInWorker(42)
    await new Promise((resolve) => setTimeout(resolve, 2000))
    performance.mark('end')
    const { duration } = performance.measure('Worker Duration', 'start', 'end');
    const isTrueResult = result === 433494437;
    console.log(`Worker ${count} Duration: ${duration}, result is ${isTrueResult ? 'correct' : 'incorrect'}`)
    console.log('=====================')
    res.send(`Worker is done: ${result}`);
});

app.get('/regular', async (req, res) => {
    const count = req.query.count || 1
    console.log(`Processing regular request ${count}`);
    performance.mark('start')
    const result = fibonacci(42)
    await new Promise((resolve) => setTimeout(resolve, 2000))
    performance.mark('end')
    const { duration } = performance.measure('Regular Duration', 'start', 'end');
    const isTrueResult = result === 433494437;
    console.log(`Regular ${count} Duration: ${duration}, result is ${isTrueResult ? 'correct' : 'incorrect'}`)
    console.log('=====================')
    res.send(`Regular is done: ${result}`);
})

app.listen(SERVER_PORT, () => {
    console.log(`Server app listening on port ${SERVER_PORT}`)
})