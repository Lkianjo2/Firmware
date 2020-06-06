# arm-unknown-nto-qnx7.0.0eabi toolchain

set(CMAKE_SYSTEM_NAME QNX)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_VERSION 1)

set(triple arm-unknown-nto-qnx7.0.0eabi)
set(CMAKE_LIBRARY_ARCHITECTURE ${triple})
set(TOOLCHAIN_PREFIX $ENV{HOME}/qnx700/host/linux/x86_64/usr/bin/${triple})

set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_C_COMPILER_TARGET ${triple})

set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS} -lsocket)

set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_CXX_COMPILER_TARGET ${triple})

set(CMAKE_AR ${TOOLCHAIN_PREFIX}-ar)
set(CMAKE_RANLIB ${TOOLCHAIN_PREFIX}-ranlib)
set(CMAKE_LD ${TOOLCHAIN_PREFIX}-ld)
set(CMAKE_LINKER ${TOOLCHAIN_PREFIX}-ld)
set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PREFIX}-as)

# specify the target environment
SET(CMAKE_FIND_ROOT_PATH  $ENV{HOME}/qnx700/target/qnx7/armle-v7)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

