cmake_minimum_required(VERSION 3.21)

project(p101_error_examples
        VERSION 0.0.1
        DESCRIPTION ""
        LANGUAGES C)

add_subdirectory(create_destroy "${CMAKE_BINARY_DIR}/create_destroy")

# Define a variable to track whether the target has been built
set(TARGET_BUILT_FLAG FALSE)

# Add a custom target to build the xxx_example_default_target from subdirectories
add_custom_target(p101_error_examples_build
    COMMAND ${CMAKE_COMMAND} --build "${CMAKE_BINARY_DIR}/create_destroy" --target create_destroy_example_all
)

# Check if the target has been built
if (NOT TARGET_BUILT_FLAG)
    # Add a dependency to set the flag when building for the first time
    add_dependencies(p101_error_examples_build set_target_flag)
endif()

# A custom target to set the flag indicating that the target has been built
add_custom_target(set_target_flag
    COMMAND ${CMAKE_COMMAND} -E echo "Target built" > "${CMAKE_BINARY_DIR}/target_built.txt"
    VERBATIM
)

# Add a dependency to p101_error_examples_build so that the flag is set before building
add_dependencies(p101_error_examples_build set_target_flag)

add_custom_target(default_target DEPENDS p101_error_examples_build)
