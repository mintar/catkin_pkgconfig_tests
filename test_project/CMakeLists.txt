cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(test_project)

#find_package(std_msgs REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_search_module(std_msgs REQUIRED std_msgs)

include_directories(${std_msgs_INCLUDE_DIRS})
link_directories(${std_msgs_LIBRARY_DIRS})

add_executable(main main.cpp)
target_link_libraries(main ${std_msgs_LIBRARIES})
target_compile_options(main PUBLIC ${std_msgs_CFLAGS_OTHER})
