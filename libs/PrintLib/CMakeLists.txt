set(srcFiles
        src/PrintResult.cpp)

add_library(PrintLib ${srcFiles})
target_include_directories(PrintLib PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>)

install(DIRECTORY include/PrintLib DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
install(TARGETS PrintLib EXPORT PrintLib DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/PrintLib)
install(EXPORT PrintLib FILE printlib-config.cmake DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/PrintLib)
