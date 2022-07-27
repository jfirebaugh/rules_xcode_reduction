args=("$@")
echo bazel "${args[0]}" --compilation_mode=dbg "${args[@]:1}"
bazel "${args[0]}" --compilation_mode=dbg "${args[@]:1}"
