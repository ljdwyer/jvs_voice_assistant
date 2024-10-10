#!/bin/bash
#if [ $# -lt 1 ]; then
	./auto_record.sh 8

var_of=` cd ~/jeeves/ ;  python3 exlexy4.py  `
var_transcript=` echo "$var_of" ` 

clear

var_2="love"

#42 will be alias for " hg ####### "
var_42="search history"
var_3="show history"


if echo "$var_transcript" | grep -i "$var_3"  > /dev/null
then
		echo " FUCKING HELL... that\'s worth a squid " 
		cat /home/red/.bash_history
fi


if echo "$var_transcript" | grep -i "$var_42"  > /dev/null
then
	var_search_query=$( echo "$var_transcript" | sed 's/\.//g'| sed 's/.*search\ history//g'|  sed 's/.*Search\ history//g'| sed 's/.*Show\ history//g'  )
	echo " searching for $var_search_query "


	cat /home/red/.bash_history | grep -i "$var_search_query"  | head

fi


















































