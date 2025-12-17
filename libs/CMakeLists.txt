# ---- Define library ----

add_library(Core)
target_sources(Core
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src/Core/Lib.cpp
    PUBLIC
        FILE_SET HEADERS
        BASE_DIRS
            ${CMAKE_CURRENT_SOURCE_DIR}/include
            ${CMAKE_CURRENT_BINARY_DIR}
        FILES
            ${CMAKE_CURRENT_SOURCE_DIR}/include/Core/Lib.hpp
            ${CMAKE_CURRENT_BINARY_DIR}/Core_Export.h
)

target_include_directories(Core
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)
set_target_warnings(Core)
set_linker_flags(Core)

include(GenerateExportHeader)
generate_export_header(Core
    EXPORT_FILE_NAME Core_Export.h
    EXPORT_MACRO_NAME CORE_API
    NO_EXPORT_MACRO_NAME CORE_PRIVATE
)
if(NOT BUILD_SHARED_LIBS)
    target_compile_definitions(Core PUBLIC CORE_STATIC_DEFINE)
endif()

set_target_properties(Core PROPERTIES
    CXX_VISIBILITY_PRESET hidden
    VISIBILITY_INLINES_HIDDEN YES
    VERSION "${PROJECT_VERSION}"
    SOVERSION "${PROJECT_VERSION_MAJOR}"
)

install(TARGETS Core)

if (BUILD_TESTING)
    add_subdirectory(test)
endif()
