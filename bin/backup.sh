#!/bin/sh

SRC=/Users/wdc
DEST=/Volumes/TouroHD/wdc

for i in dev Music Documents
do
  rsync -av ${SRC}/${i}/ ${DEST}/${i}/
done
