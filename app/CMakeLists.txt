# ---- Define executable ----

add_executable(Application App.cpp)
target_link_libraries(Application PRIVATE Core)
install(TARGETS Application)
