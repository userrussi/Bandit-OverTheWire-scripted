#!/bin/bash
# bandit9 pass: EjmOSvuAu7sGAHqHVcBDPirRe9T03kxl
# ssh bandit9@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit9.sh

echo "The password is: $(strings -n 20 data.txt | awk {' print $2 '})"