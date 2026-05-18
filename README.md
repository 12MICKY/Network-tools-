# Network Tools

Practical macOS/Linux network toolkit with one command for quick diagnostics, DNS
checks, port checks, scans, packet capture helpers, VPN status, and firewall
inspection.

The project is designed like `customizecmd`: installable, backup-aware,
repeatable, and easy to verify.

## Quick Install

Guided setup, recommended for first-time installs:

```sh
./setup.sh
```

Direct install:

```sh
./install.sh
```

One-line install from GitHub:

```sh
git clone https://github.com/12MICKY/Network-tools-.git && cd Network-tools- && ./install.sh
```

One-line guided setup:

```sh
git clone https://github.com/12MICKY/Network-tools-.git && cd Network-tools- && ./setup.sh
```

This installs:

- `nt` command to `~/.local/bin/nt`
- shell completion to `~/.config/network-tools/completions/nt.zsh`
- shell integration to `~/.config/network-tools/network-tools.zsh`
- managed `.zshrc` block so completion loads automatically

## Full Install

Install recommended packages first, then install the command. The installer
auto-detects macOS or Linux and uses `brew`, `apt`, `dnf`, or `pacman` when
available.

```sh
./install.sh --install-deps
```

Equivalent Make targets:

```sh
make setup
make install
make install-full
```

Update an existing checkout and reinstall:

```sh
./install.sh --update
```

Run the guided setup anytime:

```sh
./install.sh --wizard
```

## Usage

```sh
nt help
nt doctor
nt quick
nt tools
nt summary
nt dns github.com
nt http https://github.com
nt tls github.com
nt ping 1.1.1.1
nt trace github.com
nt ports
nt scan 192.168.1.1
nt capture any
nt wifi
nt export
nt path
nt fix
nt vpn
nt firewall
```

## Commands

- `doctor` - show installed network tools and missing recommendations
- `quick` - run a short connectivity and local-network check
- `tools` - show grouped tool inventory
- `summary` - show interfaces, routes, DNS, public IP, and listening ports
- `interfaces` - show IP addresses and link details
- `routes` - show routes
- `dns [host]` - show resolver status and query a host
- `http [url]` - show HTTP response headers and timing
- `tls <host> [port]` - show TLS certificate summary
- `whois <target>` - run `whois` or RDAP lookup
- `ping [host]` - ping a host
- `trace [host]` - trace a route with `mtr`, `traceroute`, or `tracepath`
- `ports` - show listening TCP/UDP ports
- `scan <target>` - run a fast top-port `nmap` scan
- `capture [iface] [file]` - run `tcpdump` packet capture
- `wifi` - show Wi-Fi device and NetworkManager status
- `monitor [seconds]` - watch the network overview
- `export [file]` - write a diagnostic report
- `path` - show installed command and config paths
- `fix` - clear stale `nt` aliases and reload shell integration
- `vpn` - show Tailscale, WireGuard, and OpenVPN status
- `firewall` - show UFW, nftables, and iptables status
- `speed` - run `speedtest` if installed
- `myip` - show public IP address

## Roll Back

```sh
./uninstall.sh
```

Preview rollback:

```sh
./uninstall.sh --dry-run
```

## Verify

```sh
./verify.sh
make verify
```

## License

MIT License. See [LICENSE](LICENSE).

## Shell Integration

The installer adds this managed block to `~/.zshrc` automatically:

```sh
# >>> network-tools >>>
[ -r "$HOME/.config/network-tools/network-tools.zsh" ] && source "$HOME/.config/network-tools/network-tools.zsh"
# <<< network-tools <<<
```

Use `./install.sh --no-rc` if you want to manage shell startup yourself.

If `nt` ever runs another alias from an old shell session, run:

```sh
nt fix
```

## Recommended Packages

Linux:

```sh
sudo apt update
sudo apt install -y iproute2 net-tools iputils-ping traceroute mtr-tiny dnsutils whois openssl curl wget netcat-openbsd nmap tcpdump tshark ethtool wireless-tools network-manager nftables ufw openssh-client rsync tailscale wireguard openvpn
```

macOS:

```sh
brew install curl wget nmap tcpdump wireshark mtr bind whois openssl netcat tailscale wireguard-tools openvpn
```
