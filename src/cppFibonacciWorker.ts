import { parentPort, workerData } from 'worker_threads';
import cpp from '../build/Release/fib.node'

function fibonacci(n: number): number {
    if (n <= 1) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

if (parentPort) {
    parentPort.postMessage(cpp.fibonacci(workerData));
}