#!/bin/bash
wget -O /usr/local/ritik_position.log https://inductions.delta.nitt.edu/sysad-task1-position.log

FILE=/usr/local/ritik_position.log

if [[ $1 == "" ]]; then
	dat="$(date +'%Y-%m-%d')"
else
	dat=$1
fi

while read tms name north east ; do
	tn=${tms:1:10}
	if [[ $tn == $dat ]]; then
		sudo echo "$tms	$north	$east" >> /home/$name/post_alloted.txt
                if [[ "$name" =~ Air ]]; then
                        echo "$tms      $name	$north	$east" >>/home/AirForceChief/post_assigned.txt
                elif [[ "$name" =~ Army ]]; then
                        echo "$tms      $name   $north  $east" >>/home/ArmyGeneral/post_assigned.txt
                else
                        echo "$tms      $name   $north  $east" >>/home/NavyMarshal/post_assigned.txt
                fi
	fi
done < $FILE

