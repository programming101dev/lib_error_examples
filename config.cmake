set(PROJECT_NAME "fsm_run")
set(PROJECT_VERSION "1.0.0")
set(PROJECT_DESCRIPTION "Finite State Machine - run")
set(PROJECT_LANGUAGE "C")

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Common compiler flags
set(STANDARD_FLAGS
        -D_POSIX_C_SOURCE=200809L
        -D_XOPEN_SOURCE=700
        #-D_GNU_SOURCE
        #-D_DARWIN_C_SOURCE
        #-D__BSD_VISIBLE
        -Werror
)

# Define targets
set(EXECUTABLE_TARGETS
        create_destroy
)

set(LIBRARY_TARGETS "")

set(create_destroy_SOURCES
        create_destroy/main.c
)

set(create_destroy_HEADERS "")

set(create_destroy_LINK_LIBRARIES
        p101_error
        p101_env
        p101_c
        p101_posix
        m
)
