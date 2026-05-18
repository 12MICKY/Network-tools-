#!/usr/bin/env sh
set -eu

repo_dir="$(unset CDPATH; cd -- "$(dirname -- "$0")" && pwd)"

if [ "${1:-}" = "--reset" ]; then
  "$repo_dir/uninstall.sh"
  shift
fi

exec "$repo_dir/install.sh" --wizard "$@"
