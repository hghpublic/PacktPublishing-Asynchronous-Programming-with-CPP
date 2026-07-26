# Output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BINARY_DIR}/Chapter_03)

# Create executable for each cpp file
file(GLOB SOURCES "*.cpp")
if(CMAKE_SYSTEM_NAME STREQUAL "Darwin" AND USE_BREW_GCC)
    message(STATUS "Using Homebrew GCC on macOS")
    # message(STATUS "Chapter 03 sources: ${SOURCES}")
    list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/3x02-checking_hardware_concurrency.cpp")
endif()
foreach(SOURCE ${SOURCES})
    get_filename_component(EXECUTABLE_NAME ${SOURCE} NAME_WE)
    add_executable(${EXECUTABLE_NAME} ${SOURCE})
    target_link_libraries(${EXECUTABLE_NAME} Boost::thread Boost::system Boost::container)
    set_target_properties(${EXECUTABLE_NAME} PROPERTIES FOLDER "Chapter_03")
endforeach()
