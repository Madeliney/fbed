#!/bin/sh

# Upgrade Alpine Linux to version 3.18

set -e

# Step 1: Update repository URLs
sed -i 's/v[[:digit:]]\+\.[[:digit:]]\+/v3.18/g' /etc/apk/repositories

# Step 2: Update alpine-keys
apk add -X https://dl-cdn.alpinelinux.org/alpine/edge/main -u alpine-keys --allow-untrusted

# Step 3: Add edge repository
echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

# Step 4: Update package list
apk update

# Step 5: Upgrade installed packages
apk upgrade --available

# Step 6: Upgrade kernel
apk add --upgrade linux-lts

echo "Please manually reboot the system to apply kernel upgrade."
