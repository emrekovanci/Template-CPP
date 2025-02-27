# ---- Define executable ----

add_executable(Application App.cpp)
target_link_libraries(Application PRIVATE Core)
set_compiler_warnings(Application)
set_linker_flags(Application)
install(TARGETS Application)
