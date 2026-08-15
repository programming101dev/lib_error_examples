cmake_minimum_required(VERSION 3.20)
project(p101_error_examples_tests C)
enable_testing()

find_program(P101_ERROR_LIFECYCLE_EXAMPLE
        NAMES error-lifecycle
        HINTS "${P101_SOURCE_BUILD_DIR}"
        NO_DEFAULT_PATH
        REQUIRED)
add_test(NAME lifecycle COMMAND "${P101_ERROR_LIFECYCLE_EXAMPLE}")
