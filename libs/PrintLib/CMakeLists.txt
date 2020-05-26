set(srcFiles
        src/PrintResult.cpp)

set(LIB_NAME PrintLib)

add_library(${LIB_NAME} ${srcFiles})
target_include_directories(${LIB_NAME} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${LIB_NAME}/include>)


set(LIB_ROOT ${CMAKE_INSTALL_PREFIX}/${LIB_NAME})
set(LIB_INSTALL_DIR ${LIB_ROOT}/lib)
set(INC_INSTALL_DIR ${LIB_ROOT}/include)

install(DIRECTORY include/${LIB_NAME}
        DESTINATION ${INC_INSTALL_DIR})
install(TARGETS ${LIB_NAME}
        EXPORT ${LIB_NAME}Export
        DESTINATION ${LIB_INSTALL_DIR})
install(EXPORT ${LIB_NAME}Export
        FILE ${LIB_NAME}Config.cmake
        DESTINATION ${LIB_ROOT}/cmake)