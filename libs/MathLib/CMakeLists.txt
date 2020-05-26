set(srcFiles
        src/Addition.cpp
        src/Division.cpp)

add_library(MathLib ${srcFiles})
target_include_directories(MathLib PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>)

file(GLOB_RECURSE includes include/*)

install(DIRECTORY include/MathLib DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
install(TARGETS MathLib EXPORT MathLib DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/MathLib)
install(EXPORT MathLib FILE mathlib-config.cmake DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/MathLib)