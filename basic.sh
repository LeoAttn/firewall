#!/bin/sh

# Interdire toute connexion entrante et sortante
iptables -t filter -P INPUT DROP
iptables -t filter -P FORWARD DROP
iptables -t filter -P OUTPUT ACCEPT

# ---

# Ne pas casser les connexions etablies
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT

# Autoriser loopback
iptables -t filter -A INPUT -i lo -j ACCEPT

# ICMP (Ping)
iptables -t filter -A INPUT -p icmp -j ACCEPT

# ---

# SSH Out
iptables -t filter -A INPUT -p tcp --dport 22 -j ACCEPT

# DNS In/Out
iptables -t filter -A INPUT -p tcp --dport 53 -j ACCEPT
iptables -t filter -A INPUT -p udp --dport 53 -j ACCEPT

# ---

# fail2ban-ssh
# iptables -t filter -N fail2ban-ssh
# iptables -t filter -A fail2ban-ssh -j RETURN
# iptables -t filter -A INPUT -p tcp -m multiport --dports 22 -j fail2ban-ssh

# ---

echo "The basic security rules are created"
