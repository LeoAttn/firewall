#!/bin/sh

# Autoriser toute connexion entrante et sortante
iptables -t filter -P INPUT ACCEPT
iptables -t filter -P FORWARD ACCEPT
iptables -t filter -P OUTPUT ACCEPT

echo "The policy is set to ACCEPT"
