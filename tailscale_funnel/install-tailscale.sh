#!/usr/bin/env bash

ip=$(tailscale ip -4 2>/dev/null)

if [[ $ip =~ ^100\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "done"
fi
