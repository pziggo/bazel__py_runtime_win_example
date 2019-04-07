load("@bazel_tools//tools/python:toolchain.bzl", "py_runtime_pair")

py_runtime(
    name = "py3_windows_runtime",
    files = ["@python3_windows//:files"],
    interpreter = "@python3_windows//:interpreter",
    python_version = "PY3",
    visibility = ["//visibility:public"],
)

py_runtime_pair(
    name = "py_windows_runtime_pair",
    py3_runtime = ":py3_windows_runtime",
    visibility = ["//visibility:public"],
)

toolchain(
    name = "py_windows_toolchain",
    exec_compatible_with = [
        "@bazel_tools//platforms:windows",
        "@bazel_tools//platforms:x86_64",
    ],
    target_compatible_with = [
        "@bazel_tools//platforms:windows",
        "@bazel_tools//platforms:x86_64",
    ],
    toolchain = ":py_windows_runtime_pair",
    toolchain_type = "@bazel_tools//tools/python:toolchain_type",
)