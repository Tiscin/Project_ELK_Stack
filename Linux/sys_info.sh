#!/usr/bin/env bash

echo -e "Today's date: $(date).\n" >> ~/research/sys_info.txt
echo -e "You are using $(uname -a).\n" >> ~/research/sys_info.txt
echo -e "Your IP info: $(ifconfig | grep -i 'inet' | head -2 | tail -1).\n" >> ~/research/sys_info.txt
echo -e "Computer name $(hostname)\n" >> ~/research/sys_info.txt
echo -e "Memory info: " >> ~/research/sys_info.txt
free -h >> ~/research/sys_info.txt
echo >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "\nDNS servers: " >> ~/research/sys_info.txt
cat /etc/resolv.conf >> ~/research/sys_info.txt
echo -e "\nCPU info: " >> ~/research/sys_info.txt
lscpu | grep CPU >> ~/research/sys_info.txt
echo -e "\nDisk usage: " >> ~/research/sys_info.txt
df -H | head -2 >> ~/research/sys_info.txt
echo -e "\nWho is logged in: \n $(who -a) \n" >> ~/research/sys_info.txt
echo -e "\nSUID Files: " >> ~/research/sys_info.txt
find / -type f -perm /4000 >> ~/research/sys_info.txt
echo -e "\nTop 10 processes" >> ~/research/sys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt
