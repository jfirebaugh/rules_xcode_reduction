args=("$@")
bazel "${args[0]}" --compilation_mode=dbg "${args[@]:1}"
