#!/bin/bash
echo 'npx concurrently "npx --quiet http-server --port=3001 --silent" "npx --quiet http-server --port=3002"';
echo '  View demo at http://127.0.0.1:3001/';
npx --quiet concurrently "npx --quiet http-server --port=3001" "npx --quiet http-server --port=3002"
