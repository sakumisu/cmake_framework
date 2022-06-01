if(NOT DEFINED ENV{SDK_BASE})
    message(FATAL_ERROR "please set SDK_BASE in your system environment")
endif()

set(SDK_BASE $ENV{SDK_BASE})

set(__build_dir ${CMAKE_CURRENT_BINARY_DIR}/output)
set(PROJECT_BINARY_DIR ${__build_dir})
set(PROJECT_SOURCE_DIR ${SDK_BASE})
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR})

add_library(sdk_intf_lib INTERFACE)
add_library(app STATIC)
target_link_libraries(app sdk_intf_lib)

include(${SDK_BASE}/cmake/toolchain.cmake)
include(${SDK_BASE}/cmake/extension.cmake)

enable_language(C CXX ASM)

add_subdirectory(${SDK_BASE} ${__build_dir})