find_package(PrintLib REQUIRED)
if(PrintLib_FOUND)
    message(STATUS "PrintLib found.")
else()
    message(FATAL_ERROR "PrintLib not found.")
endif()