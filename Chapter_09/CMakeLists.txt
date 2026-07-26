# Output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BINARY_DIR}/Chapter_09)

# Create executable for each cpp file
file(GLOB SOURCES "*.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/9x02-executor_work_guard.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/9x04-post_and_dispatch.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/9x06-exception_handling.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/9x08-multithreaded_io_context_main_thread.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/9x10-single_io_context_several_handlers_thread.cpp")
# list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/9x18-explicit_strands.cpp")
foreach(SOURCE ${SOURCES})
    get_filename_component(EXECUTABLE_NAME ${SOURCE} NAME_WE)
    add_executable(${EXECUTABLE_NAME} ${SOURCE})
    target_link_libraries(${EXECUTABLE_NAME} Boost::thread Boost::system Boost::container)
    set_target_properties(${EXECUTABLE_NAME} PROPERTIES FOLDER "Chapter_09")
endforeach()
