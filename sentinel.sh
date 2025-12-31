#!/bin/bash

DISK_THRESHOLD=85
LOG_FILE="sentinel.log"
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Disk Kullanimini Hesapla
DISK_USAGE=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//g')

echo "System Check Initiated: $CURRENT_DATE"
echo "Current Disk Usage: $DISK_USAGE%"

# Kontrol Et
if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo -e "\033[0;31m[CRITICAL] Disk space is critically low!\033[0m"
    echo "$CURRENT_DATE - [CRITICAL] Disk Usage: $DISK_USAGE% (Threshold: $DISK_THRESHOLD%)" >> $LOG_FILE
else
    echo -e "\033[0;32m[OK] System is healthy.\033[0m"
fi
