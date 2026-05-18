#!/usr/bin/env sh
set -eu

sh -n install.sh
sh -n uninstall.sh
sh -n setup.sh
sh -n verify.sh
sh -n bin/nt
zsh -n completions/nt.zsh
zsh -n shell/network-tools.zsh

./bin/nt help >/dev/null
./bin/nt doctor >/dev/null
./bin/nt version >/dev/null
./bin/nt tools >/dev/null
./bin/nt path >/dev/null
./bin/nt selftest >/dev/null
./install.sh --help >/dev/null
./setup.sh --help >/dev/null
./install.sh --dry-run --no-verify >/dev/null 2>&1
./uninstall.sh --dry-run >/dev/null 2>&1

if command -v shellcheck >/dev/null 2>&1; then
  shellcheck install.sh uninstall.sh setup.sh verify.sh bin/nt
fi

printf 'verify ok\n'
