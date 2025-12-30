# ---- Define executable ----

add_executable(Application App.cpp)
target_link_libraries(Application PRIVATE Core)
set_target_warnings(Application)
install(TARGETS Application)
