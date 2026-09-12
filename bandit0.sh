#!/bin/bash
# bandit0 pass: bandit0
# ssh bandit0@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit0.sh

echo "The password is: $(cat readme | tail -n 2 | head -n 1 | cut -d : -f 2)"

