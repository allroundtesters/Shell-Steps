#! /bin/sh

# flush iptables setting
iptables -F

# iptables -P input DROP

# iptables -A INPUT -s "ip_address" -j DROP

