case "$1" in
build | run | test)
  args=("$@")
  bazel "${args[0]}" --compilation_mode=dbg "${args[@]:1}"
  ;;
*)
  bazel "$@"
  ;;
esac
