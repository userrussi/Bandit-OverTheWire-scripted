#!/bin/bash
# bandit12 pass: GROozWPO8QyN0mGrjUkID0WCYkZiQxrN
# ssh bandit12@bandit.labs.overthewire.org -p 2220 'bash -s' < bandit12.sh

path="/tmp/..bandit12_file"

if [ -d $path ]; then
	chmod 777 $path
else
	mkdir $path
	chmod 777 $path
fi
sleep 1

rm -rf $path/*

xxd -r data.txt $path/data.gz
gunzip -d $path/data.gz
sleep 1


mv $path/data $path/data.bz2
bzip2 -d $path/data.bz2 
sleep 1


mv $path/data $path/data.gz
gunzip -d $path/data.gz
sleep 1

mv $path/data $path/data.tar
tar -xf "$path/data.tar" -C "$path"
sleep 1

mv $path/data5.bin $path/data1.tar
tar -xf "$path/data1.tar" -C "$path"
sleep 1

mv $path/data6.bin $path/data.bz2
bzip2 -d $path/data.bz2 
sleep 1

mv $path/data $path/data2.tar
tar -xf "$path/data2.tar" -C "$path"
sleep 1

mv $path/data8.bin $path/data10.gz
gunzip -d $path/data10.gz
sleep 1

echo "The password is: $(cat $path/data10 | awk {' print $4 '})"