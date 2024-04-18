set(INCROOT ${PROJECT_SOURCE_DIR}/library/include/Core)
set(SRCROOT ${PROJECT_SOURCE_DIR}/library/src/Core)

# Define header and source file lists
set(LIBRARY_HEADERS
    ${INCROOT}/Lib.hpp
)

set(LIBRARY_SOURCES
    ${SRCROOT}/Lib.cpp
)

# Define library and its properties
add_library(Core ${LIBRARY_HEADERS} ${LIBRARY_SOURCES})
target_include_directories(Core PUBLIC ${PROJECT_SOURCE_DIR}/library/include)
target_compile_features(Core PUBLIC cxx_std_17)

include(GenerateExportHeader)
generate_export_header(Core
    EXPORT_FILE_NAME Core_Export.h
    EXPORT_MACRO_NAME CORE_API
    NO_EXPORT_MACRO_NAME CORE_PRIVATE
)
target_sources(Core
    PUBLIC
        FILE_SET HEADERS
        BASE_DIRS ${CMAKE_CURRENT_BINARY_DIR}
        FILES ${CMAKE_CURRENT_BINARY_DIR}/Core_Export.h
)

if(NOT BUILD_SHARED_LIBS)
    target_compile_definitions(Core PUBLIC CORE_STATIC_DEFINE)
endif()

## set_target_properties(Core PROPERTIES
##    CXX_VISIBILITY_PRESET hidden
##    VISIBILITY_INLINES_HIDDEN YES
##    VERSION "${PROJECT_VERSION}"
##    SOVERSION "${PROJECT_VERSION_MAJOR}"
## )

install(TARGETS Core)

if (FEATURE_TESTS)
    add_subdirectory(${PROJECT_SOURCE_DIR}/library/test)
endif()

# Group headers and sources for IDE
source_group(TREE ${INCROOT} PREFIX "Headers" FILES ${LIBRARY_HEADERS})
source_group(TREE ${SRCROOT} PREFIX "Sources" FILES ${LIBRARY_SOURCES})
