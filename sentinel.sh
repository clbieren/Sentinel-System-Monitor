#!/bin/bash

DISK_THRESHOLD=85
LOG_FILE="sentinel.log"
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

if [ -d "/host" ]; then
    TARGET_PATH="/host"
    TARGET_NAME="Host System (Mounted)"
else
    TARGET_PATH="/"
    TARGET_NAME="Container Internal"
fi

DISK_USAGE=$(df -h $TARGET_PATH | grep / | head -1 | awk '{ print $5 }' | sed 's/%//g')

echo "System Check Initiated: $CURRENT_DATE"
echo "Monitoring Target: $TARGET_NAME"
echo "Current Disk Usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo -e "\033[0;31m[CRITICAL] Disk space is critically low!\033[0m"
    echo "$CURRENT_DATE - [CRITICAL] Disk Usage: $DISK_USAGE% (Threshold: $DISK_THRESHOLD%)" >> $LOG_FILE
else
    echo -e "\033[0;32m[OK] System is healthy.\033[0m"
fi
