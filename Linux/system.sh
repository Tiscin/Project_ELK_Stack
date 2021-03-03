#!/usr/bin/env bash

# system memory
echo -e "Memory info: " >> ~/backups/freemem/"$(date '+%Y_%m_%d_free_mem.txt')"
free -h >> ~/backups/freemem/"$(date '+%Y_%m_%d_free_mem.txt')"

# disk usage
echo -e "Disk usage: " >> ~/backups/diskuse/"$(date '+%Y_%m_%d_disk_usage.txt')"
du -h / >> ~/backups/diskuse/"$(date '+%Y_%m_%d_disk_usage.txt')"
#read -p "DU location? IE: /home/sysadmin " disk
#du -h $disk >> ~/backups/diskuse/"$(date '+%Y_%m_%d_disk_usage.txt')"

# list all open files
echo -e "All open files" >> ~/backups/openlist/"$(date '+%Y_%m_%d_open_list.txt')"
lsof >> ~/backups/openlist/"$(date '+%Y_%m_%d_open_list.txt')"

# file system disk space
echo -e "File system disk space" >> ~/backups/freedisk/"$(date '+%Y_%m_%d_free_disk.txt')"
df -h >> ~/backups/freedisk/"$(date '+%Y_%m_%d_free_disk.txt')"
