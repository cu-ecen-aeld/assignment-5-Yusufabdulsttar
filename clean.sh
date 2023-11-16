#!/bin/bash
#Script to clean build buildroot
#Author: Yusuf Abdulsttar

if [ ! -d buildroot ]
then
	echo "MISSING BUILDROOT DIRCTORY"
else
	echo "Clean..."
	make -C buildroot distclean
	
	if [ $? -ne 0 ]
	then 
		echo "clean failed"
		exit 1 
	fi
	
	echo "clean completed"
fi
