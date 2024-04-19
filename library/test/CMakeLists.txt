include(Catch)
set(CMAKE_CATCH_DISCOVER_TESTS_DISCOVERY_MODE PRE_TEST)

add_executable(CoreTests ${PROJECT_SOURCE_DIR}/library/test/Tests.cpp)
target_link_libraries(CoreTests PRIVATE Core Catch2::Catch2WithMain)
target_compile_features(CoreTests PRIVATE cxx_std_17)
set_target_properties(CoreTests PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Core/Tests)
catch_discover_tests(CoreTests WORKING_DIRECTORY $<TARGET_FILE_DIR:Core>)
