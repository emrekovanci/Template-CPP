# Define executable and its properties
add_executable(Application App.cpp)
target_link_libraries(Application PRIVATE Core)
set_target_properties(Application PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Application)
install(TARGETS Application)
