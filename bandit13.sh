#!/bin/bash
# bandit13 pass: qQYQiHOBPR8zR61qxYqX45quvihF2uzk
# ./bandit13

scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .

chmod 400 sshkey.private

echo '#!/bin/bash' > b13.sh
echo 'echo "The password is: $(cat /etc/bandit_pass/bandit14)"' > b13.sh

ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220 'bash -s' < b13.sh

rm -rf b13.sh 
rm -rf sshkey.private
