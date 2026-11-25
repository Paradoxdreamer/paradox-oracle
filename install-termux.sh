#!/data/data/com.termux/files/usr/bin/bash
# Paradox Oracle - Termux notes / helper
set -e

echo "[*] Paradox Oracle - Termux helper"
echo ""
echo "[!] Full BloodHound CE + Neo4j is heavy for Termux."
echo "    Recommended workflow:"
echo "    1. Collect with SharpHound on Windows"
echo "    2. Transfer the zip to a real Linux box or VPS"
echo "    3. Analyze there"
echo ""
echo "You can still install some supporting tools:"

pkg update -y
pkg install -y git python python-pip

echo ""
echo "[+] Basic tools ready."
echo "    For actual graph analysis, use a proper Linux host or Docker."
