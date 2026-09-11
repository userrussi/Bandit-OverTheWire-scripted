#!/bin/bash

(echo "4pIjcunZ0fK2vmp3IwfG8Vf7VhxD6pOA" | nc -l -p 12345 | echo "The password is: $(head -n 1)") &
sleep 1
./suconnect 12345 2&>/dev/null
