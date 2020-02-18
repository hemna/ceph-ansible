#!/bin/bash
mkdir ~/lvm
cd ~/lvm
truncate -s 41G test-1
truncate -s 41G test-2
truncate -s 41G test-3
truncate -s 41G test-4

TEST1=`sudo losetup -f --show ./test-1`
TEST2=`sudo losetup -f --show ./test-2`
TEST3=`sudo losetup -f --show ./test-3`
TEST4=`sudo losetup -f --show ./test-4`

vgcreate large1 $TEST1
vgcreate large2 $TEST2
vgcreate large3 $TEST3
vgcreate large4 $TEST4

lvcreate -L40G -n large1-lv large1
lvcreate -L40G -n large2-lv large2
lvcreate -L40G -n large3-lv large3
lvcreate -L40G -n large4-lv large4
