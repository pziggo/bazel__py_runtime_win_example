workspace(name = "bazel_py_runtime_win_example")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "python3_windows",
    build_file = "//third_party/python3:python3_windows.BUILD",
    sha256 = "6de14c9223226cf0cd8c965ecb08c51d62c770171a256991b4fddc25188cfa8e",
    url = "https://www.python.org/ftp/python/3.7.3/python-3.7.3-embed-amd64.zip",
)

register_toolchains(
    "//tools/python:py_windows_toolchain",
)