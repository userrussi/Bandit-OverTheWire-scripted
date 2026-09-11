#!/bin/bash

echo "The password is: $(cat $(cat /usr/bin/cronjob_bandit22.sh | head -n 2 | tail -n 1 | cut -d ' ' -f 3))"
