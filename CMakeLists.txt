cmake_minimum_required(VERSION 3.12)

project(projekcik)

find_package(SDL2 REQUIRED)

file(GLOB app_sources src/*)

include_directories(inc ${SDL2_INCLUDE_DIRS})

add_executable(projekcik ${app_sources})
target_link_libraries(projekcik ${SDL2_LIBRARIES})