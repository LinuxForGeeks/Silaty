#!/bin/bash

if [ "$(id -u)" != "0" ]; then
echo “This script must be run as root” 2>&1
exit 1
fi

sed -i '/raise RuntimeError(.*/i \            return "x86_64"' /usr/local/lib/python3.6/dist-packages/appimagebuilder/common/elf.py
