set(srcFiles
        src/PrintResult.cpp)

add_library(PrintLib ${srcFiles})
target_include_directories(PrintLib PUBLIC include)