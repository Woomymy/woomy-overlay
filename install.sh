#!/bin/bash
if [ $UID !=  0 ]; then 
	echo "This script must run as root!"
	exit 1 
fi
if [ ! "$(command -v emerge)" ]; then
	echo "This system is not a gentoo linux system"
	exit 1
fi
if [[ ! "$(command -v git)" ]]; then
	emerge git
fi
emerge eselect-repository
eselect repository add woomy-overlay git https://github.com/woomy4680-exe/woomy-overlay.git
