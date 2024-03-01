cmake_minimum_required(VERSION 3.26)

project(
    Template-CPP
    VERSION 0.1.0
    DESCRIPTION "Template project for developing C++ applications"
    HOMEPAGE_URL "https://github.com/emrekovanci/Template-CPP"
    LANGUAGES CXX
)

if(FEATURE_TESTS)
    enable_testing()
endif()

add_subdirectory(library)
add_subdirectory(app)
