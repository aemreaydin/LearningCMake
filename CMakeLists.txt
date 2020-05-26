cmake_minimum_required(VERSION 3.16)
project(LearningCMake)

set(CMAKE_CXX_STANDARD 17)

set(srcFiles
        main.cpp)

add_executable(LearningCMake ${srcFiles})

include(cmake/FindMathLib.cmake)
include(cmake/FindPrintLib.cmake)

target_link_libraries(${PROJECT_NAME} MathLib PrintLib)