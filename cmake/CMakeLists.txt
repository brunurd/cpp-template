cmake_minimum_required(VERSION 3.12)

project(cpp_template)

set(CMAKE_CXX_STANDARD 20)

find_package(SFML 2.5 COMPONENTS graphics window system REQUIRED)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/../build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../headers)

file(GLOB SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/../src/*.cpp")
add_executable(cpp_template ${SOURCES})

target_link_libraries(cpp_template sfml-graphics sfml-window sfml-system)

