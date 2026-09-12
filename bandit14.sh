#!/bin/bash
# bandit14 pass: aaWecNkG4FhxJQxz07uiwzVP6bJiYS65
# ssh bandit14@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit14.sh

echo "The password is: $(echo "aaWecNkG4FhxJQxz07uiwzVP6bJiYS65" | nc localhost 30000 | tail -n 2 | head -n 1)"
