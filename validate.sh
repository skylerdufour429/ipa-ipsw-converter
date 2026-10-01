#!/usr/bin/env bash
set -euo pipefail
[ -s index.html ] && [ -s jszip.min.js ] && [ -s README.md ]
grep -q 'iPhone1,1_3.0_7A341_Restore.ipsw' index.html
grep -q 'not a signed Apple restore image' index.html
echo 'Package validation: OK'
