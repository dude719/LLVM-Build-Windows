#!/bin/bash
# For building using MINGW toolchain

cmake -H. -G"Ninja" -Bbuild \
        -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_SHARED_LIBS=false \
        -DLLVM_BUILD_STATIC=true \
        -DLLVM_ENABLE_RTTI=0 \
        -DLLVM_USE_CRT_RELEASE=MT \
        -DLLVM_USE_CRT_DEBUG=MTd \
        -DLIBCXX_INSTALL_HEADERS=ON \
        -DLIBCXX_ENABLE_EXCEPTIONS=ON \
        -DLIBCXX_ENABLE_THREADS=ON \
        -DLIBCXX_HAS_WIN32_THREAD_API=ON \
        -DLIBCXX_ENABLE_MONOTONIC_CLOCK=ON \
        -DLIBCXX_ENABLE_SHARED=OFF \
        -DLIBCXX_SUPPORTS_STD_EQ_CXX11_FLAG=TRUE \
        -DLIBCXX_HAVE_CXX_ATOMICS_WITHOUT_LIB=TRUE \
        -DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
        -DLIBCXX_ENABLE_FILESYSTEM=OFF \
        -DLIBCXX_ENABLE_STATIC_ABI_LIBRARY=TRUE \
        -DLIBCXX_CXX_ABI=libcxxabi \
        -DCMAKE_C_FLAGS_RELEASE="-s -Wl,--strip-all" \
        -DCMAKE_CXX_FLAGS_RELEASE="-s -Wl,--strip-all" \
        -DCMAKE_EXE_LINKER_FLAGS="-static" \
        ..