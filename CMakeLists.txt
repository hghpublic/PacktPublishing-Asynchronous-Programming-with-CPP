cmake_minimum_required(VERSION 3.31)
project("Asynchronous Programming in C++")

# Set C++ standard
set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED True)

option(USE_BREW_GCC "Use Homebrew GCC on macOS" OFF)

if(0)
message(STATUS "CMAKE_SYSTEM_NAME: ${CMAKE_SYSTEM_NAME}")
message(STATUS "CMAKE_COMPILER_IS_GNUCXX: ${CMAKE_COMPILER_IS_GNUCXX}")
message(STATUS "CMAKE_CXX_COMPILER_ID: ${CMAKE_CXX_COMPILER_ID}")
message(STATUS "CMAKE_C_COMPILER_VERSION: ${CMAKE_C_COMPILER_VERSION}")
message(STATUS "CMAKE_CXX_COMPILER_VERSION: ${CMAKE_CXX_COMPILER_VERSION}")
endif()

# if(CMAKE_SYSTEM_NAME STREQUAL "Darwin" AND NOT CMAKE_CXX_COMPILER_ID STREQUAL "AppleClang")
# message(STATUS "Darwin detected")
# add_definitions(-Drsize_t=ssize_t)
# endif()

set(REQUIRED_BOOST_VERSION 1.91.0)
# Find Boost
find_package(Boost ${REQUIRED_BOOST_VERSION} REQUIRED COMPONENTS thread system container)
if(NOT Boost_FOUND)
    message(FATAL_ERROR "Boost ${REQUIRED_BOOST_VERSION} is required but not found.")
endif()

# Include Boost directories
include_directories(${Boost_INCLUDE_DIRS})


if(0)
# https://cmake.org/cmake/help/latest/module/FindBoost.html
# https://www.boost.org/doc/user-guide/building-with-cmake.html
# https://github.com/boostorg/cobalt
# https://www.boost.org/doc/libs/latest/libs/cobalt/doc/html/index.html

# Result Variables

message(STATUS "Boost_FOUND: ${Boost_FOUND}")
message(STATUS "Boost_INCLUDE_DIRS: ${Boost_INCLUDE_DIRS}")
message(STATUS "Boost_LIBRARY_DIRS: ${Boost_LIBRARY_DIRS}")
message(STATUS "Boost_LIBRARIES: ${Boost_LIBRARIES}")
message(STATUS "Boost_VERSION_MACRO: ${Boost_VERSION_MACRO}")
message(STATUS "Boost_VERSION_STRING: ${Boost_VERSION_STRING}")
message(STATUS "Boost_VERSION: ${Boost_VERSION}")
message(STATUS "Boost_LIB_VERSION: ${Boost_LIB_VERSION}")
message(STATUS "Boost_VERSION_COUNT: ${Boost_VERSION_COUNT}")
message(STATUS "Boost_LIB_DIAGNOSTIC_DEFINITIONS: ${Boost_LIB_DIAGNOSTIC_DEFINITIONS}")

# Cache Variables

message(STATUS "Boost_INCLUDE_DIR: ${Boost_INCLUDE_DIR}")
message(STATUS "Boost_LIBRARY_DIR_RELEASE: ${Boost_LIBRARY_DIR_RELEASE}")
message(STATUS "Boost_LIBRARY_DIR_DEBUG: ${Boost_LIBRARY_DIR_DEBUG}")

# Hints

message(STATUS "BOOST_ROOT: ${BOOST_ROOT}")
message(STATUS "BOOSTROOT: ${BOOSTROOT}")
message(STATUS "BOOST_INCLUDEDIR: ${BOOST_INCLUDEDIR}")
message(STATUS "BOOST_LIBRARYDIR: ${BOOST_LIBRARYDIR}")
message(STATUS "Boost_NO_SYSTEM_PATHS: ${Boost_NO_SYSTEM_PATHS}")
message(STATUS "Boost_ADDITIONAL_VERSIONS: ${Boost_ADDITIONAL_VERSIONS}")

# Other Variables

message(STATUS "Boost_USE_DEBUG_LIBS: ${Boost_USE_DEBUG_LIBS}")
message(STATUS "Boost_USE_RELEASE_LIBS: ${Boost_USE_RELEASE_LIBS}")
message(STATUS "Boost_USE_MULTITHREADED: ${Boost_USE_MULTITHREADED}")
message(STATUS "Boost_USE_STATIC_LIBS: ${Boost_USE_STATIC_LIBS}")
message(STATUS "Boost_USE_STATIC_RUNTIME: ${Boost_USE_STATIC_RUNTIME}")
message(STATUS "Boost_USE_DEBUG_RUNTIME: ${Boost_USE_DEBUG_RUNTIME}")
message(STATUS "Boost_USE_DEBUG_PYTHON: ${Boost_USE_DEBUG_PYTHON}")
message(STATUS "Boost_COMPILER: ${Boost_COMPILER}")
message(STATUS "Boost_ARCHITECTURE: ${Boost_ARCHITECTURE}")
message(STATUS "Boost_DEBUG: ${Boost_DEBUG}")
message(STATUS "xxx: ${xxx}")
message(STATUS "xxx: ${xxx}")
message(STATUS "xxx: ${xxx}")
message(STATUS "xxx: ${xxx}")


# find_package(Boost 1.56 REQUIRED COMPONENTS
#              date_time filesystem iostreams)
# add_executable(foo foo.cc)
# target_link_libraries(foo Boost::date_time Boost::filesystem
#                           Boost::iostreams)
endif()



# Find GoogleTest
enable_testing()
find_package(GTest REQUIRED)
if(NOT GTest_FOUND)
    message(FATAL_ERROR "GoogleTest library is required but not found.")
endif()
include(GoogleTest)

# Include GoogleTest directories
include_directories(${GTest_INCLUDE_DIRS})

# Add {fmt} library
find_package(fmt)
if(NOT fmt_FOUND)
    message(FATAL_ERROR "fmt library is required but not found.")
endif()

# Linker flags
# if((CMAKE_CXX_COMPILER_ID MATCHES GNU) OR (CMAKE_CXX_COMPILER_ID MATCHES Clang))
#     set(CMAKE_CXX_FLAGS_DEBUG   "${CMAKE_CXX_FLAGS} -O0 -g3 -Wall -Wextra -pedantic")
#     set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} -O3 -DNDEBUG -Wall -Wextra -pedantic")
# endif()

# Set the output directory for binaries
set(BINARY_DIR ${CMAKE_BINARY_DIR}/bin)

# Add chapters
add_subdirectory(Chapter_03)
add_subdirectory(Chapter_04)
add_subdirectory(Chapter_05)
add_subdirectory(Chapter_06)
add_subdirectory(Chapter_07)
add_subdirectory(Chapter_08)
add_subdirectory(Chapter_09)
add_subdirectory(Chapter_10)
add_subdirectory(Chapter_11)
add_subdirectory(Chapter_12)
add_subdirectory(Chapter_13)
