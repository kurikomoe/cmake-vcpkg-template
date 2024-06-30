cmake_minimum_required(VERSION 3.25.0)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/vcpkg/scripts/buildsystems/vcpkg.cmake CACHE STRING "")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

project(KProject)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
set(CMAKE_CXX_FLAGS_RELEASE "-flto -O3 -Wall -Werror")

# find_package(Catch2 CONFIG REQUIRED)
# target_link_libraries(main PRIVATE Catch2::Catch2 Catch2::Catch2WithMain)

set(TARGET "main")
set(TARGET_OUTPUT_NAME "main")
file(GLOB SRC CONFIGURE_DEPENDS src/*.cpp)
add_executable(${TARGET} ${SRC})
set_target_properties(${TARGET} PROPERTIES OUTPUT_NAME ${TARGET_OUTPUT_NAME})
target_include_directories(${TARGET} PUBLIC ${CMAKE_SOURCE_DIR}/include)
