# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mlebek/dev/sdl2_practice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mlebek/dev/sdl2_practice/bin

# Include any dependencies generated for this target.
include CMakeFiles/projekcik.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/projekcik.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/projekcik.dir/flags.make

CMakeFiles/projekcik.dir/src/Application.cpp.o: CMakeFiles/projekcik.dir/flags.make
CMakeFiles/projekcik.dir/src/Application.cpp.o: ../src/Application.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mlebek/dev/sdl2_practice/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/projekcik.dir/src/Application.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/projekcik.dir/src/Application.cpp.o -c /home/mlebek/dev/sdl2_practice/src/Application.cpp

CMakeFiles/projekcik.dir/src/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projekcik.dir/src/Application.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mlebek/dev/sdl2_practice/src/Application.cpp > CMakeFiles/projekcik.dir/src/Application.cpp.i

CMakeFiles/projekcik.dir/src/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projekcik.dir/src/Application.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mlebek/dev/sdl2_practice/src/Application.cpp -o CMakeFiles/projekcik.dir/src/Application.cpp.s

CMakeFiles/projekcik.dir/src/main.cpp.o: CMakeFiles/projekcik.dir/flags.make
CMakeFiles/projekcik.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mlebek/dev/sdl2_practice/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/projekcik.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/projekcik.dir/src/main.cpp.o -c /home/mlebek/dev/sdl2_practice/src/main.cpp

CMakeFiles/projekcik.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projekcik.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mlebek/dev/sdl2_practice/src/main.cpp > CMakeFiles/projekcik.dir/src/main.cpp.i

CMakeFiles/projekcik.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projekcik.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mlebek/dev/sdl2_practice/src/main.cpp -o CMakeFiles/projekcik.dir/src/main.cpp.s

CMakeFiles/projekcik.dir/src/pointers.cpp.o: CMakeFiles/projekcik.dir/flags.make
CMakeFiles/projekcik.dir/src/pointers.cpp.o: ../src/pointers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mlebek/dev/sdl2_practice/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/projekcik.dir/src/pointers.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/projekcik.dir/src/pointers.cpp.o -c /home/mlebek/dev/sdl2_practice/src/pointers.cpp

CMakeFiles/projekcik.dir/src/pointers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projekcik.dir/src/pointers.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mlebek/dev/sdl2_practice/src/pointers.cpp > CMakeFiles/projekcik.dir/src/pointers.cpp.i

CMakeFiles/projekcik.dir/src/pointers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projekcik.dir/src/pointers.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mlebek/dev/sdl2_practice/src/pointers.cpp -o CMakeFiles/projekcik.dir/src/pointers.cpp.s

# Object files for target projekcik
projekcik_OBJECTS = \
"CMakeFiles/projekcik.dir/src/Application.cpp.o" \
"CMakeFiles/projekcik.dir/src/main.cpp.o" \
"CMakeFiles/projekcik.dir/src/pointers.cpp.o"

# External object files for target projekcik
projekcik_EXTERNAL_OBJECTS =

projekcik: CMakeFiles/projekcik.dir/src/Application.cpp.o
projekcik: CMakeFiles/projekcik.dir/src/main.cpp.o
projekcik: CMakeFiles/projekcik.dir/src/pointers.cpp.o
projekcik: CMakeFiles/projekcik.dir/build.make
projekcik: CMakeFiles/projekcik.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mlebek/dev/sdl2_practice/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable projekcik"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/projekcik.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/projekcik.dir/build: projekcik

.PHONY : CMakeFiles/projekcik.dir/build

CMakeFiles/projekcik.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/projekcik.dir/cmake_clean.cmake
.PHONY : CMakeFiles/projekcik.dir/clean

CMakeFiles/projekcik.dir/depend:
	cd /home/mlebek/dev/sdl2_practice/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mlebek/dev/sdl2_practice /home/mlebek/dev/sdl2_practice /home/mlebek/dev/sdl2_practice/bin /home/mlebek/dev/sdl2_practice/bin /home/mlebek/dev/sdl2_practice/bin/CMakeFiles/projekcik.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/projekcik.dir/depend

