#!/bin/bash
mkdir ~/lvm
cd ~/lvm
truncate -s 40G test-1
truncate -s 40G test-2
truncate -s 40G test-3
truncate -s 40G test-4

TEST1=`sudo losetup -f --show --direct-io=on ./test-1`
TEST2=`sudo losetup -f --show --direct-io=on ./test-2`
TEST3=`sudo losetup -f --show --direct-io=on ./test-3`
TEST4=`sudo losetup -f --show --direct-io=on ./test-4`

vgcreate large1 $TEST1
vgcreate large2 $TEST2
vgcreate large3 $TEST3
vgcreate large4 $TEST4
