#!/bin/bash 
# bandit7 pass: Bmnnvf82KzQlfxgAI2d1zYbr1u9pr3E3
# ssh bandit7@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit7.sh

echo "The password is: $(cat data.txt | grep millionth | awk {' print $2 '})"
