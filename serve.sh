#!/usr/bin/env bash
set -e

PORT=${1:-8080}

if command -v npx &>/dev/null; then
  echo "Serving with live-reload at http://localhost:$PORT"
  npx --yes live-server --port="$PORT" --no-browser .
elif command -v python3 &>/dev/null; then
  echo "Serving at http://localhost:$PORT (no live-reload; install Node.js for that)"
  python3 -m http.server "$PORT"
else
  echo "Error: neither npx nor python3 found" >&2
  exit 1
fi
