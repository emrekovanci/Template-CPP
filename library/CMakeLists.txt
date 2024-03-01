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
add_library(Core STATIC ${LIBRARY_HEADERS} ${LIBRARY_SOURCES})
target_include_directories(Core PUBLIC ${PROJECT_SOURCE_DIR}/library/include)
target_compile_features(Core PUBLIC cxx_std_17)

# Group headers and sources for IDE
source_group(TREE ${INCROOT} PREFIX "Headers" FILES ${LIBRARY_HEADERS})
source_group(TREE ${SRCROOT} PREFIX "Sources" FILES ${LIBRARY_SOURCES})
