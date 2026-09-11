#!/bin/bash

file=$(echo "I am user bandit23" | md5sum | cut -d ' ' -f 1)

cat /tmp/$file
