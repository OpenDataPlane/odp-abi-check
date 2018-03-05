#!/bin/sh

set -e

abi-monitor -get -build odp.json

./do-api-next.sh

abi-tracker -build odp.json
abi-tracker -build -t graph -deploy gh-pages odp.json
mkdir -p gh-pages/graph/ODP
cp -r graph/ODP/graph.png gh-pages/graph/ODP/
cp index.html gh-pages/
