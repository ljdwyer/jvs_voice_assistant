#!/bin/bash
#if [ $# -lt 1 ]; then



#1record audio
./auto_record.sh 8
#2distilltext
var_outputfile=` cd ~/jeeves/ ;  python3 exlexy4.py  `
#echo distillwords into the shell
var_transcript=` echo "$var_outputfile" ` 

clear

var_2="love"

#42 will be alias for " hg ####### "
var_42="search history"

var_5="^Thank you.$"

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



###
# NEXT FUNCTION
# Run audio distill
# pass output to a script
#	#	#	#
# runhist.sh
# 
# # var_3 var_3="show history"
#
#
#1record audio
./auto_record.sh 8
#2distilltext
var_outputfile=` cd ~/jeeves/ ;  python3 exlexy4.py  `
#echo distillwords into the shell
var_transcript=` echo "$var_outputfile" ` 



if echo "$var_transcript" | grep -i "$var_3"  > /dev/null
then
#desired_search=$( echo "$var_hist" | sed 's/\([^history]\)\(.*\)/\2/g' )
# learn zsh
# fig out bash # problem

	desired_search=$( cat $HISTFILLE | grep ip  | sed 's/\([^history]\)\(.*\)/\2/g' )
	echo  "$desired_search"
	
fi
###
# NEXT FUNCTION
# Run audio distill
# pass output to a script
#	#	#	#
# askAPI ( gpt... local oogabooga )

###
# NEXT FUNCTION
# Run audio distill
# pass output to a script
#	#	#	#
# askAPI ( run molmo, ask it details on a screenshot, i.e. what coords to click... then code with xdotool )

















































