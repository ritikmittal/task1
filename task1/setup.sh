#!/bin/bash

if [[ $1 =~ task1 ]] && [[ -d ${1} ]]; then
	echo "alias userGenerate='sudo ${1}/scripts/userGenerate.sh'" >> ~/.bashrc
	echo "alias permit='sudo ${1}/scripts/permit.sh'" >> ~/.bashrc
	echo "alias autoSchedule='${1}/scripts/autoSchedule.sh'" >> ~/.bashrc
	echo "alias attendance='${1}/scripts/attendance.sh'" >> ~/.bashrc
	chmod 775 ${1}/setup2.sh ${1}/scripts/*
else echo "please give proper path in format of /home/user/....../task1"
fi

