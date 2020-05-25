set(srcFiles
        src/Addition.cpp
        src/Division.cpp)

add_library(MathLib ${srcFiles})
target_include_directories(MathLib PUBLIC include)