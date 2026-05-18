#!/usr/bin/env sh
set -eu

dry_run=0

usage() {
  cat <<'EOF'
Usage: ./uninstall.sh [options]

Options:
  --dry-run  Show what would be removed.
EOF
}

log() {
  printf '%s\n' "$*"
}

section() {
  log ""
  log "==> $*"
}

run() {
  if [ "$dry_run" -eq 1 ]; then
    printf 'dry-run: %s\n' "$*"
  else
    "$@"
  fi
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --dry-run) dry_run=1 ;;
    -h|--help) usage; exit 0 ;;
    *) usage >&2; exit 2 ;;
  esac
  shift
done

section "Removing network-tools files"

for file in "$HOME/.local/bin/nt" "$HOME/.config/network-tools/completions/nt.zsh" "$HOME/.config/network-tools/network-tools.zsh"; do
  if [ -e "$file" ]; then
    run rm -f "$file"
    if [ "$dry_run" -eq 1 ]; then
      log "would remove $file"
    else
      log "removed $file"
    fi
  else
    log "not installed: $file"
  fi
done

log ""
log "Done."
