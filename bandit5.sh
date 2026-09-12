#!/bin/bash
# bandit5 pass: 6C7h9GD8M6ai5nr7wo1RonrzFjj9yIrG
# ssh bandit5@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit5.sh

echo "The password is: $(cat $(find . -size 1033c ! -executable) | head -n 1)"
