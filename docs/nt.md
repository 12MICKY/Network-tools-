# nt

`nt` is a small macOS/Linux network toolkit command.

## Install

```sh
./setup.sh
```

For non-interactive installation:

```sh
./install.sh
```

For a full install with recommended packages:

```sh
./install.sh --install-deps
```

## Common Commands

```sh
nt doctor
nt quick
nt tools
nt summary
nt ports
nt dns github.com
nt http https://github.com
nt tls github.com
nt scan 192.168.1.1
nt export
nt selftest
```

## Troubleshooting

If an old shell alias captures `nt`, run:

```sh
unalias nt 2>/dev/null
hash -r
nt fix
```

If completion is missing, open a new terminal or source:

```sh
source ~/.config/network-tools/network-tools.zsh
```
