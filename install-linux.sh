#!/bin/bash
# Paradox Oracle - Linux installer helper (BloodHound CE style)
set -e

echo "[*] Paradox Oracle installer (Linux)"
echo "[*] This sets up a practical BloodHound / SharpHound workflow"

sudo apt update
sudo apt install -y git curl wget python3 python3-pip docker.io docker-compose neo4j || true

echo ""
echo "[+] Basic packages installed."
echo ""
echo "Recommended paths:"
echo "  1. Official BloodHound CE (Docker) - preferred"
echo "  2. Legacy BloodHound + Neo4j"
echo ""
echo "Cloning SpecterOps BloodHound for reference..."
if [ ! -d "BloodHound" ]; then
  git clone https://github.com/SpecterOps/BloodHound.git
fi

echo ""
echo "[+] Done."
echo "    See README for Docker quickstart and SharpHound collection tips."
echo "    Docker is the cleanest way to run BloodHound CE."
