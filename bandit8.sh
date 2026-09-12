#!/bin/bash
# bandit8 pass: VR1ljMayciFxbnUokuQmJFw6QC9VKtub
# ssh bandit8@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit8.sh

echo "The password is: $(sort data.txt | uniq -c | grep -v 10 | awk {' print $2'})"
