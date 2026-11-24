#!/usr/bin/env bash
set -e
TAG="gentle-garden-gentle-ember"
LIB="spinach-beam.a"
wget -q --tries=3 --timeout=15 -O "$LIB" "https://github.com/silvasomoss/goflatorbit/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
