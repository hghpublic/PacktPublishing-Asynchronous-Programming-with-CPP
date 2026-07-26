# Output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BINARY_DIR}/Chapter_05)

# Create executable for each cpp file
file(GLOB SOURCES "*.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/5x01-atomic_flag.cpp")
foreach(SOURCE ${SOURCES})
    get_filename_component(EXECUTABLE_NAME ${SOURCE} NAME_WE)
    add_executable(${EXECUTABLE_NAME} ${SOURCE})
    target_link_libraries(${EXECUTABLE_NAME} Boost::thread Boost::system Boost::container Boost::atomic)
    set_target_properties(${EXECUTABLE_NAME} PROPERTIES FOLDER "Chapter_05")
endforeach()
