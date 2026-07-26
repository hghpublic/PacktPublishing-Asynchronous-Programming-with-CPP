set(CMAKE_C_COMPILER "/opt/homebrew/bin/gcc-16")
set(CMAKE_CXX_COMPILER "/opt/homebrew/bin/g++-16")
# set(CMAKE_SYSROOT /opt/homebrew/)

get_filename_component(RPATH "/opt/homebrew/lib" ABSOLUTE)

# set(CMAKE_EXE_LINKER_FLAGS
#     "-Wl,-rpath,${RPATH}"
#     CACHE STRING
#     "CMAKE_EXE_LINKER_FLAGS"
#     FORCE
# )

set(CMAKE_OSX_SYSROOT /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk)
