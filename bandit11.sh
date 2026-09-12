#!/bin/bash
# bandit11 pass: pYfOY6HwUsDj5rL9UvyhU7MCmv8vN5Ro
# ssh bandit11@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit11.sh

echo "The password is: $(cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | awk {' print $4 '})"

