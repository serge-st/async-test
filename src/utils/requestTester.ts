import express from 'express'
import { performance } from 'perf_hooks'
import { SERVER_PORT } from '../constants';

const testerApp = express()
const testerPort = 4224
const requestCount = 5;

testerApp.get('/test-worker', async (req, res) => {
    console.log('Starting to test worker')
    performance.mark('single_start')
    console.log('Sending a single request to worker')
    await fetch(`http://localhost:${SERVER_PORT}/worker`)
    console.log('Single request to worker is done')
    performance.mark('single_end')
    const singleRequestResult = performance.measure('Single Worker Request Duration', 'single_start', 'single_end');
    console.log(`Single Worker Request Duration: ${singleRequestResult.duration}`)

    console.log(`Sending ${requestCount} parallel requests to worker`)
    performance.mark('parallel_start')
    const requests = Array.from({ length: requestCount }, (_, i) => fetch(`http://localhost:${SERVER_PORT}/worker?count=${i + 1}`))
    await Promise.all(requests);
    console.log(`Parallel requests to worker are done`)
    performance.mark('parallel_end')
    const { duration: totalDuration } = performance.measure('Parallel Worker Request Duration', 'parallel_start', 'parallel_end');
    const averageDuration = totalDuration / requestCount;
    console.log(`Parallel Worker Request Average Duration: ${averageDuration}`);
    console.log(`Parallel Worker Request Total Duration: ${totalDuration}`);

    console.log('=====================')
    res.send('done\n');
});

testerApp.get('/test-regular', async (req, res) => {
    console.log('Starting to test regular')
    performance.mark('single_start')
    console.log('Sending a single request to regular')
    await fetch(`http://localhost:${SERVER_PORT}/regular`)
    console.log('Single request to regular is done')
    performance.mark('single_end')
    const singleRequestResult = performance.measure('Single Regular Request Duration', 'single_start', 'single_end');
    console.log(`Single Regular Request Duration: ${singleRequestResult.duration}`)

    console.log(`Sending ${requestCount} parallel requests to regular`)
    performance.mark('parallel_start')
    const requests = Array.from({ length: requestCount }, (_, i) => fetch(`http://localhost:${SERVER_PORT}/regular?count=${i + 1}`))
    await Promise.all(requests)
    console.log(`Parallel requests to regular are done`)
    performance.mark('parallel_end')
    const { duration: totalDuration } = performance.measure('Parallel Regular Request Duration', 'parallel_start', 'parallel_end');
    const averageDuration = totalDuration / requestCount;
    console.log(`Parallel Regular Request Average Duration: ${averageDuration}`);
    console.log(`Parallel Regular Request Total Duration: ${totalDuration}`);

    console.log('=====================')
    res.send('done\n');
});

testerApp.listen(testerPort, () => {
    console.log(`Tester app listening on port ${testerPort}`)
});
