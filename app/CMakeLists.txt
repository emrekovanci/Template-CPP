# Define executable and its properties
add_executable(${PROJECT_NAME} App.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE Core)
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PROJECT_NAME})
