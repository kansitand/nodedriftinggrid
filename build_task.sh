#!/usr/bin/env bash
set -e
LIB="musk-tensor.a"
TAG="gentle-cedar-hidden-comet"
REPO="kansitand/nodedriftinggrid"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
