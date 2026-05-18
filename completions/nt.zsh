#compdef nt

_nt() {
  local -a commands
  commands=(
    'doctor:show installed and missing network tools'
    'quick:run short connectivity and local-network check'
    'tools:show grouped tool inventory'
    'summary:show compact network overview'
    'interfaces:show interfaces'
    'routes:show routes'
    'dns:query DNS'
    'http:show HTTP headers and timing'
    'tls:show TLS certificate summary'
    'whois:run whois or RDAP lookup'
    'ping:ping a host'
    'trace:trace route to a host'
    'ports:show listening ports'
    'scan:run fast nmap scan'
    'capture:capture packets'
    'wifi:show Wi-Fi status'
    'monitor:watch network overview'
    'export:write diagnostic report'
    'path:show installed paths'
    'fix:clear stale aliases and reload shell integration'
    'selftest:run nt smoke tests'
    'vpn:show VPN status'
    'firewall:show firewall status'
    'speed:run speedtest'
    'myip:show public IP'
    'help:show help'
  )

  _describe 'command' commands
}

_nt "$@"
