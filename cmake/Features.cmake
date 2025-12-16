option(BUILD_TESTING "Build tests" OFF)
if(BUILD_TESTING)
    list(APPEND VCPKG_MANIFEST_FEATURES "tests")
    enable_testing()
endif()

if(PROJECT_IS_TOP_LEVEL)
    option(BUILD_SHARED_LIBS "Build shared libs." OFF)
endif()
