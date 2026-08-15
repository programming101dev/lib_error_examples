set(PROJECT_NAME "p101_error_examples")
set(PROJECT_VERSION "1.0.0")
set(PROJECT_DESCRIPTION "Examples for lib_error")
set(PROJECT_LANGUAGE "C")

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

# Common compiler flags
set(STANDARD_FLAGS
        -D_POSIX_C_SOURCE=200809L
        -D_XOPEN_SOURCE=700
        -Werror
)

set(DARWIN_STANDARD_FLAGS
        -D_DARWIN_C_SOURCE
)

set(LINUX_STANDARD_FLAGS
)

set(BSD_STANDARD_FLAGS
)

# Define targets
set(EXECUTABLE_TARGETS
        create_destroy
        lifecycle
)

set(LIBRARY_TARGETS "")

set(create_destroy_SOURCES
        create_destroy/main.c
)

set(create_destroy_HEADERS "")

set(create_destroy_LINK_LIBRARIES
        p101_error
        p101_env
        p101_tool_event
        p101_c
        m
)

set(lifecycle_SOURCES lifecycle/main.c)
set(lifecycle_HEADERS "")
set(lifecycle_LINK_LIBRARIES p101_error)
set(lifecycle_OUTPUT_NAME error-lifecycle)
set(lifecycle_INSTALL OFF)
