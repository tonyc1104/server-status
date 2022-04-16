#!/bin/bash
# -Hostname:
echo -e "\e[31;43m***** Hostname *****\e[0m"
live=s2.as1b05.net
host=$( hostname )
if [[ $host != $live ]]; then
        echo "Hostname does not match"
else
        echo "Hostname matches"
        echo "hostname = [$host] "
fi
echo ""

# -IP Address:
echo -e "\e[31;43m***** IP Address *****\e[0m"
ip_addresses=$(ip route get 1.2.3.4 | awk '{print $7}')
ip=192.168.11.90
if [[ $ip_addresses != $ip ]]; then
        echo "IP Address does not match"
else
        echo "IP Address matches"
        echo "IP Address = [$ip_addresses] "
fi
echo ""

# -Gateway:
echo -e "\e[31;43m***** Gateway *****\e[0m"
gateway=$(ip route get 1.2.3.4 | awk '{print $3}')
sgateway=192.168.11.2
if [[ $gateway != $sgateway ]]; then
        echo "Gateway does not match"
else
        echo "Gateway matches"
        echo "Gateway = [$gateway] "
fi
echo ""

# -DNS server's IP address:
echo -e "\e[31;43m***** DNS server's IP address *****\e[0m"
dns=$(host s2.as1b05.net | awk '{print $4}')
sdns=192.168.11.90
if [[ $dns != $sdns ]]; then
        echo "DNS does not match [$dns]"
else
        echo "DNS matches"
        echo "DNS = [$dns] "
fi
echo ""

# -File system disk space usage:
echo -e "\e[31;43m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
df -h
echo ""
#-SELinus status
echo -e "\e[31;43m***** SELinus status *****\e[0m"
sestatus
echo ""
#-List the directories in /home
echo -e "\e[31;43m***** List the directories in /home *****\e[0m"
ls -l /home
echo ""
#-List the services are allowed on firewall 
echo -e "\e[31;43m***** List the services are allowed on firewall  *****\e[0m"
firewall-cmd --list-services
echo ""
# -System uptime and load:
echo -e "\e[31;43m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime
echo ""
# -Logged-in users:
echo -e "\e[31;43m***** CURRENTLY LOGGED-IN USERS *****\e[0m"
who
echo ""
