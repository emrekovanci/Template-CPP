cmake_minimum_required(VERSION 3.26)

project(
    Template-CPP
    VERSION 0.1
    DESCRIPTION "Template project for developing C++ applications"
    HOMEPAGE_URL "https://github.com/emrekovanci/Template-CPP"
    LANGUAGES CXX
)

add_executable(${PROJECT_NAME} Main.cpp)

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_17)
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PROJECT_NAME})
