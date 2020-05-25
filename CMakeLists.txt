cmake_minimum_required(VERSION 3.16)
project(LearningCMake)

set(CMAKE_CXX_STANDARD 17)

set(srcFiles
        main.cpp)

add_subdirectory(MathLib)
add_subdirectory(PrintLib)

add_executable(LearningCMake ${srcFiles})
target_link_libraries(${PROJECT_NAME} MathLib PrintLib)