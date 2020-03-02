# Get the project name from the current directory
get_filename_component(prj ${CMAKE_CURRENT_SOURCE_DIR} NAME)

# Basic CMake project
cmake_minimun_required(VERSION 3.5)
 
project(${prj} CXX)

# Add all cpp and h files
file(GLOB SRC_FILES
  "*.h"
  "*.cpp"
)

# Enabke C++11 feature on gnu/clang
if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "(GNU|Clang)")
  set(CMAKE_CXX_FLAGS "-std=c++11")
endif()

add_executable(${prj} ${SRC_FILES})
