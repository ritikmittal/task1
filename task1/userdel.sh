#!/bin/bash

userdel -rf ChiefCommander
#rm -r /home/ChiefCommander
userdel -rf  ArmyGeneral
#rm -r /home/ArmyGeneral
userdel -rf NavyMarshal
#rm -r /home/NavyMarshal
userdel -rf AirForceChief  
#rm -r /home/AirForceChief
count=1 

while [ $count -lt 51 ]; do
        name=Army$count
        userdel -rf $name
       # rm -r /home/$name
        name=Navy$count
        userdel -rf $name
       # rm -r /home/$name
        name=AirForce$count
        userdel -rf $name 
       # rm -r /home/$name
        count=$((count+1))

done

