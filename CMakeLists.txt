cmake_minimum_required(VERSION 3.26)

include(cmake/PreventInSourceBuilds.cmake)
include(cmake/Features.cmake)

project(
    Template-CPP
    VERSION 0.1.0
    DESCRIPTION "Template project for developing C++ applications"
    HOMEPAGE_URL "https://github.com/emrekovanci/Template-CPP"
    LANGUAGES CXX
)

include(GNUInstallDirs)
include(cmake/CompilerWarnings.cmake)
include(cmake/LinkerFlags.cmake)

if(FEATURE_TESTS)
    enable_testing()
    find_package(Catch2 REQUIRED)
endif()

add_subdirectory(library)
add_subdirectory(app)
