#!/bin/bash
# bandit6 pass: pXa26xhMWaC2SvDotA4r9EgZkulOeSBW
# ssh bandit6@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit6.sh

echo "The password is: $(cat $(find / -user bandit7 -group bandit6 -size 33c 2>/dev/null))"
