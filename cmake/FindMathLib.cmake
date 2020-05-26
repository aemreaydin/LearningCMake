set(MathLib_INCLUDE_DIR $ENV{BaseLibs}/include)
set(MathLib_LIBRARY_DIR $ENV{BaseLibs}/lib/MathLib)
find_package(MathLib REQUIRED)
if(MathLib_FOUND)
    message(STATUS "MathLib found.")
else()
    message(FATAL_ERROR "MathLib not found.")
endif()