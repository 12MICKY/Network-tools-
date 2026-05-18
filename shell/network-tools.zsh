# Network Tools shell integration.

unalias nt 2>/dev/null

network_tools_completion_dir="$HOME/.config/network-tools/completions"

if [[ -d "$network_tools_completion_dir" ]]; then
  fpath=("$network_tools_completion_dir" $fpath)
fi

if [[ -n "${ZSH_VERSION:-}" ]] && ! whence -w compinit >/dev/null 2>&1; then
  autoload -Uz compinit
  compinit
fi

unset network_tools_completion_dir
