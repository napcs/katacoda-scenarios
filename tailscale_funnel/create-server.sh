#!/usr/bin/env bash

if curl -s http://localhost:3000 >/dev/null 2>&1; then
  echo "done"
fi
