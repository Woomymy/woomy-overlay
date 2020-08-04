#!/bin/bash
if [ $UID !=  0 ]; then 
	echo "This script must run as root!"
	exit 1 
fi
if [ ! "$(command -v emerge)" ]; then
	echo "This system is not a gentoo linux system"
	exit 1
fi
