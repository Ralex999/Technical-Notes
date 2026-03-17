#!/bin/bash
TARGET="8.8.8.8"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

check_connectivity() {
    if ping -c 3 "$TARGET" > /dev/null 2>&1; then
        echo "[$TIMESTAMP] Node reachable."
    else
        echo "[$TIMESTAMP] Packet loss detected. Checking routing..."
        ip route show
    fi
}

check_connectivity
