	  __  _                             _  _ 
	 / _|(_) _ __  ___ __      __ __ _ | || |
	| |_ | || '__|/ _ \\ \ /\ / // _` || || |
	|  _|| || |  |  __/ \ V  V /| (_| || || |
	|_|  |_||_|   \___|  \_/\_/  \__,_||_||_|

*Simplify use of iptables*

## Help

	Usage: firewall [OPTION]
	Configure the firewall with iptables.

	Options:
	  -l, --list [CHAIN]	display all rules (-n for numbers)
	      --list-rules	display all rules commands 
	  -b, --basic		set basic security rules on iptables
	  -c, --clear		clear all rules on iptables
	      --all-accept	set the policy of default chains to ACCEPT
	      --all-drop	set the policy of default chains to DROP

	  -A, --append CHAIN PROTOCOL PORT	append rule with specified values
	  -C, --check CHAIN PROTOCOL PORT	check if rule exist
	  -D, --delete CHAIN PROTOCOL PORT	delete rule with specified values
	  -i, --add-input PROTOCOL PORT		append INPUT rule
	  -I, --rm-input PROTOCOL PORT		delete INPUT rule
	  -o, --add-output PROTOCOL PORT	append OUTPUT rule
	  -O, --rm-output PROTOCOL PORT		delete OUTPUT rule

	      --ssh		add rules for ssh I/O (port 22)
	      --http		add rules for http I/O (port 80)
	      --https		add rules for https I/O (port 443)
	  -n, --node		add rules for node I/O (port 3000)
	  -p, --proxy		add rules for KiddieProxy TCP I/O (port 42000)
	      --netbios		add rules for NetBIOS I/O

	  -h, --help		display this help and exit
	      --version		display version information and exit


