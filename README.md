# Bazel python runtime

* [py_runtime definition](tools/python/BUILD)
* [starlark rule](tools/generator/generator.bzl)

## Using `python_top`

### Execution via starlark action

```bash
bazel build --python_top=//tools/python:py3_windows_runtime //:test
```

### Running as target

```bash
bazel run --python_top=//tools/python:py3_windows_runtime //tools/generator -- "C:\temp\my_testfile"
```

## Using python toolchain

Requieres bazel >= 0.25.0

### Execution via starlark action

```bash
bazel build --incompatible_use_python_toolchains //:test
```

### Running as target

```bash
bazel run --incompatible_use_python_toolchains //tools/generator -- "C:\temp\my_testfile"
```