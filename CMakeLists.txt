cmake_minimum_required(VERSION 3.16)
project(LearningCMake)

set(CMAKE_CXX_STANDARD 17)

set(srcFiles
        main.cpp)

add_executable(LearningCMake ${srcFiles})

set(PrintLib_DIR $ENV{BaseLibs}/PrintLib/cmake)
find_package(PrintLib REQUIRED)
if(NOT PrintLib_FOUND)
    message(FATAL_ERROR "PrintLib not found.")
endif()

set(MathLib_DIR $ENV{BaseLibs}/MathLib/cmake)
find_package(MathLib REQUIRED)
if(NOT MathLib_FOUND)
    message(FATAL_ERROR "MathLib not found.")
endif()

target_link_libraries(${PROJECT_NAME} PrintLib MathLib)