#!/usr/bin/env bash
set -e

PORT=${1:-8080}

if command -v python3 &>/dev/null; then
  echo "Serving at http://localhost:$PORT"
  python3 -m http.server "$PORT"
elif command -v npx &>/dev/null; then
  echo "Serving at http://localhost:$PORT"
  npx serve -l "$PORT" .
else
  echo "Error: neither python3 nor npx found" >&2
  exit 1
fi
