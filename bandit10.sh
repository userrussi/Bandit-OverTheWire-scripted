#!/bin/bash
# bandit10 pass: B0s2khmbT9u0geKuOoVGW3JZKhndE3BG
# ssh bandit10@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit10.sh

echo "The password is: $(cat data.txt | base64 -d | awk {' print $4 '})"
