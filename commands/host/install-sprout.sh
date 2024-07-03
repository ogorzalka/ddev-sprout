#!/bin/bash

ARCHITECTURE=$(uname -m)
if [ "$ARCHITECTURE" == "x86_64" ]; then
  curl -L "https://github.com/talss89/sprout/releases/latest/download/sprout-linux-x86_64.tar.gz" | tar zxf - -C /usr/local/bin
elif [ "$ARCHITECTURE" == "aarch64" ] || [ "$ARCHITECTURE" == "amd64" ]; then
  curl -L "https://github.com/talss89/sprout/releases/latest/download/sprout-linux-aarch64.tar.gz" | tar zxf - -C /usr/local/bin
else
  echo "Unsupported architecture: $ARCHITECTURE"
  exit 1
fi

chmod +x /usr/local/bin/sprout
