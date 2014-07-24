#!/bin/sh

BASEDIR=/media/artur/c35c78f5-564f-4d35-835f-dbfa88cb76324/cm11
VENDOR=lge
DEVICE=p760

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
	cd $BASEDIR/$FILE/ &&
	git am --signoff $BASEDIR/patcher/$FILE/*
	cd $BASEDIR
done
