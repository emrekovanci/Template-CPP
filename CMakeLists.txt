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
    find_package(Catch2 REQUIRED)
endif()

add_subdirectory(library)
add_subdirectory(app)

set(CPACK_PACKAGE_FILE_NAME
    "${CMAKE_PROJECT_NAME}-${CMAKE_PROJECT_VERSION}-${CMAKE_SYSTEM_NAME}-${CMAKE_BUILD_TYPE}-${CMAKE_CXX_COMPILER_ID}-${CMAKE_CXX_COMPILER_VERSION}"
)
include(CPack)
