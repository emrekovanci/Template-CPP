function(set_compiler_warnings target)
    if (MSVC)
        if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
            set(PROJECT_WARNINGS
                -Wall
                -Wextra
                -Wshadow
                -Wpedantic
                -Wunused
                -Wformat=2
                -Wnull-dereference
                -Wnon-virtual-dtor
                -Woverloaded-virtual
                -Wold-style-cast
                -Wno-missing-prototypes
                -Wno-switch-enum
                -Wno-c++98-compat
                -Wno-c++98-compat-pedantic
                /EHsc)
        else()
            # Note that all the flags after /W4 are required for MSVC to conform to the language standard
            set(PROJECT_WARNINGS
                    /guard:cf
                    /utf-8
                    /diagnostics:caret
                    /sdl
                    /w14165
                    /w44242
                    /w44254
                    /w44263
                    /w34265
                    /w34287
                    /w44296
                    /w44388
                    /w44464
                    /w14545
                    /w14546
                    /w14547
                    /w14549
                    /w14555
                    /w34619
                    /w34640
                    /w24826
                    /w14905
                    /w14906
                    /w14928
                    /w45038
                    /W4
                    /permissive-
                    /volatile:iso
                    /Zc:inline
                    /Zc:preprocessor
                    /Zc:enumTypes
                    /Zc:lambda
                    /Zc:__cplusplus
                    /Zc:externConstexpr
                    /Zc:throwingNew
                    /EHsc)
        endif()
    elseif (CMAKE_CXX_COMPILER_ID MATCHES "AppleClang")
        set(PROJECT_WARNINGS
            -fstack-protector-strong
            -Wall
            -Wextra
            -Wpedantic
            -Wconversion
            -Wsign-conversion
            -Wcast-qual
            -Wformat=2
            -Wundef
            -Werror=float-equal
            -Wshadow
            -Wcast-align
            -Wunused
            -Wnull-dereference
            -Wdouble-promotion
            -Wimplicit-fallthrough
            -Wextra-semi
            -Woverloaded-virtual
            -Wnon-virtual-dtor
            -Wold-style-cast
        )
    elseif (CMAKE_CXX_COMPILER_ID MATCHES "Clang" OR CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
        set(PROJECT_WARNINGS
            -U_FORTIFY_SOURCE
            -D_FORTIFY_SOURCE=3
            -D_GLIBCXX_ASSERTIONS=1
            -fstack-protector-strong
            -fcf-protection=full
            -fstack-clash-protection
            -Wall
            -Wextra
            -Wpedantic
            -Wconversion
            -Wsign-conversion
            -Wcast-qual
            -Wformat=2
            -Wundef
            -Werror=float-equal
            -Wshadow
            -Wcast-align
            -Wunused
            -Wnull-dereference
            -Wdouble-promotion
            -Wimplicit-fallthrough
            -Wextra-semi
            -Woverloaded-virtual
            -Wnon-virtual-dtor
            -Wold-style-cast
        )
    else()
        message(AUTHOR_WARNING "No compiler warnings set for CXX compiler: '${CMAKE_CXX_COMPILER_ID}'")
    endif()

    target_compile_options(${target} PRIVATE ${PROJECT_WARNINGS})
endfunction()
