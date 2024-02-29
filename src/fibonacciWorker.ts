import { parentPort, workerData } from 'worker_threads';

function fibonacci(n: number): number {
    if (n <= 1) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

if (parentPort) {
    parentPort.postMessage(fibonacci(workerData));
}
