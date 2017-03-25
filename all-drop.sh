#!/bin/sh

# Refuser toute connexion entrante et sortante
iptables -t filter -P INPUT DROP
iptables -t filter -P FORWARD DROP
iptables -t filter -P OUTPUT DROP

echo "The policy is set to DROP"
