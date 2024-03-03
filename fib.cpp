#include <node.h>
#include <iostream>

namespace fibonacci {

using v8::FunctionCallbackInfo;
using v8::Isolate;
using v8::Local;
using v8::Number;
using v8::Object;
using v8::Value;

int Fibonacci(int n) {
    if (n <= 1) return 1;
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}

// Wrapper for the Fibonacci C++ function to be called from Node.js.
void CalculateFibonacci(const FunctionCallbackInfo<Value>& args) {
    Isolate* isolate = args.GetIsolate();

    // Check the number of arguments passed.
    if (args.Length() < 1) {
        isolate->ThrowException(v8::Exception::TypeError(
            v8::String::NewFromUtf8(isolate, "Wrong number of arguments").ToLocalChecked()));
        return;
    }

    // Check the argument types.
    if (!args[0]->IsNumber()) {
        isolate->ThrowException(v8::Exception::TypeError(
            v8::String::NewFromUtf8(isolate, "Wrong argument type").ToLocalChecked()));
        return;
    }

    int n = args[0]->NumberValue(isolate->GetCurrentContext()).FromJust();
    int result = Fibonacci(n);

    Local<Number> num = Number::New(isolate, result);
    args.GetReturnValue().Set(num);
}

void Initialize(Local<Object> exports) {
    NODE_SET_METHOD(exports, "fibonacci", CalculateFibonacci);
}

NODE_MODULE(NODE_GYP_MODULE_NAME, Initialize);

}
