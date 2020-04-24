#!/bin/bash
if [[ $1 =~ task1 ]] && [[ -d $1 ]]; then
        echo "alias record='${1}/scripts/record.sh'" >> /home/ArmyGeneral/.bashrc
        echo "alias record='${1}/scripts/record.sh'" >> /home/NavyMarshal/.bashrc
        echo "alias record='${1}/scripts/record.sh'" >> /home/AirForceChief/.bashrc
        echo "alias finalattendance='${1}/scripts/finalattendance.sh'" >> /home/ChiefCommander/.bashrc
        echo "alias nearest='${1}/scripts/nearest.sh'" >> /home/ChiefCommander/.bashrc
else echo "please give proper path in format of /home/User/...../task1"
fi

