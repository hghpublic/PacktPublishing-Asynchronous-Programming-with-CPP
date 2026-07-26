cmake_minimum_required(VERSION 4.4)

project(hello)

# find_package(fmt CONFIG REQUIRED)

set(target hello)
add_executable(${target} main.cpp)
target_compile_features(${target} PUBLIC cxx_std_26)
# target_link_libraries(${target} PRIVATE fmt::fmt)
# target_link_libraries(${target} PRIVATE stdc++)

