#!/bin/bash
if [[ $1 != "" ]]; then
crontab -l > mycron
echo "0 0 * * * ${1}/scripts/Schedule.sh" >> mycron
crontab mycron
rm mycron
else echo "Please enter the full path of task1 in format /home/user/..../task1"
fi
