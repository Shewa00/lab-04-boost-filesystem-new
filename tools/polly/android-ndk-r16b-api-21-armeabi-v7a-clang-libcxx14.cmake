# Copyright (c) 2015-2017, Ruslan Baratov
# Copyright (c) 2015, David Hirvonen
# Copyright (c) 2017, Robert Nitsch
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R16B_API_21_ARMEABI_V7A_CLANG_LIBCXX14_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R16B_API_21_ARMEABI_V7A_CLANG_LIBCXX14_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r16b")
set(CMAKE_SYSTEM_VERSION "21")
set(CMAKE_ANDROID_ARCH_ABI "armeabi-v7a")
set(CMAKE_ANDROID_ARM_NEON FALSE)
set(CMAKE_ANDROID_ARM_MODE TRUE) # 32-bit ARM
set(CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION "clang")
set(CMAKE_ANDROID_STL_TYPE "c++_static") # LLVM libc++ static

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / \ 
32-bit ARM / Clang / c++14 support / libc++ static"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("flags/cxx14.cmake") # before toolchain!
include("os/android.cmake")
