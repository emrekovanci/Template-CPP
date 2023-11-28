add_executable(${PROJECT_NAME} App.cpp)

# depends on CoreLibrary
target_link_libraries(${PROJECT_NAME} PRIVATE CoreLibrary)

# set the output directory for the executable
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${PROJECT_NAME})
