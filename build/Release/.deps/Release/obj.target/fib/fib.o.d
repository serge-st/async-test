cmd_Release/obj.target/fib/fib.o := c++ -o Release/obj.target/fib/fib.o ../fib.cpp '-DNODE_GYP_MODULE_NAME=fib' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/Users/serge/Library/Caches/node-gyp/21.6.2/include/node -I/Users/serge/Library/Caches/node-gyp/21.6.2/src -I/Users/serge/Library/Caches/node-gyp/21.6.2/deps/openssl/config -I/Users/serge/Library/Caches/node-gyp/21.6.2/deps/openssl/openssl/include -I/Users/serge/Library/Caches/node-gyp/21.6.2/deps/uv/include -I/Users/serge/Library/Caches/node-gyp/21.6.2/deps/zlib -I/Users/serge/Library/Caches/node-gyp/21.6.2/deps/v8/include  -O3 -gdwarf-2 -flto -mmacosx-version-min=11.0 -arch arm64 -Wall -Wendif-labels -W -Wno-unused-parameter -std=gnu++17 -stdlib=libc++ -fno-rtti -fno-exceptions -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/fib/fib.o.d.raw   -c
Release/obj.target/fib/fib.o: ../fib.cpp \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/cppgc/common.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8config.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-array-buffer.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-local-handle.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-handle-base.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-internal.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-object.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-maybe.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-persistent-handle.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-weak-callback-info.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-primitive.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-data.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-value.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-traced-handle.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-container.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-context.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-snapshot.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-date.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-debug.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-script.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-callbacks.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-promise.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-message.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-exception.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-extension.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-external.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-function.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-function-callback.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-template.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-memory-span.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-initialization.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-isolate.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-embedder-heap.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-microtask.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-statistics.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-unwinder.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-embedder-state-scope.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-platform.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-source-location.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-json.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-locker.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-microtask-queue.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-primitive-object.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-proxy.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-regexp.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-typed-array.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-value-serializer.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-version.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-wasm.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node_version.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node_api.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/js_native_api.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/js_native_api_types.h \
  /Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node_api_types.h
../fib.cpp:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/cppgc/common.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8config.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-array-buffer.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-local-handle.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-handle-base.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-internal.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-object.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-maybe.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-persistent-handle.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-weak-callback-info.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-primitive.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-data.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-value.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-traced-handle.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-container.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-context.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-snapshot.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-date.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-debug.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-script.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-callbacks.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-promise.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-message.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-exception.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-extension.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-external.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-function.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-function-callback.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-template.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-memory-span.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-initialization.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-isolate.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-embedder-heap.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-microtask.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-statistics.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-unwinder.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-embedder-state-scope.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-platform.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-source-location.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-json.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-locker.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-microtask-queue.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-primitive-object.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-proxy.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-regexp.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-typed-array.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-value-serializer.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-version.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/v8-wasm.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node_version.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node_api.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/js_native_api.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/js_native_api_types.h:
/Users/serge/Library/Caches/node-gyp/21.6.2/include/node/node_api_types.h:
