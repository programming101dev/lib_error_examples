# lib_error examples

Small executable examples for `lib_error`. Install `lib_error` first, or build
this repository inside the p101 workspace's exact dependency lane.

`lifecycle` creates an error, raises and checks a typed user error, then resets
and destroys it.

## Build

```bash
git clone https://github.com/programming101dev/lib_error_examples.git
cd lib_error_examples
cmake -S . -B build -DCMAKE_C_COMPILER=clang -DP101_BUILD_LEVEL=1
cmake --build build
./build/error-lifecycle
```

Workspace compiler discovery writes other available choices to
`supported_c_compilers.txt`.
