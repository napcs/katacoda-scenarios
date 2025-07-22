#!/usr/bin/env bash
pid_file="$HOME/.user_shell.pid"

cwd= $(readlink -f "/proc/${pid}/cwd")

if [[ ${cwd} == "${HOME}/Desktop" ]]; then
  echo "done"
  exit 0
else
  echo "not yet (cwd = ${cwd})"
  exit 1
fi
