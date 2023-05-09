#!/bin/bash

occupied1=$(bspc query -D -d .occupied --names | tr '\n' ' ')
occupied_all=${occupied1::-1}

focused=$(bspc query -D -d .focused --names)

#notify-send "Occupied: $occupied"
#notify-send "Focused: $focused"

desktops="1 2 3 4 5"
toSend="12345"

for desktop in $desktops
do
	if [ $focused == $desktop ];then
		toSend=${toSend//$desktop/●}
	fi
	
	for occupied in $occupied_all
	do
		if [ $occupied == $desktop ];then
			toSend=${toSend//$desktop/◉}
		fi
	done

	if [ $focused != $desktop ];then
		toSend=${toSend//$desktop/○}
	fi
	
done

dunstify -t 1000 -h string:x-dunst-stack-tag:desktops "Desktops" "<span color='#cdd6f4' font='20px'><i><b>$toSend</b></i></span>"

# graveyard

#toReplace="◉"
#toSend=$(awk -v n=1 -v r="$toReplace" '{ $n = r } 1' <<< "$str")
			
#toSend=$(sed -e "s/\<\w\+/$toReplace/1" <<< "$toSend")

# for i in $occupied
# do
	# #printf $i
	# if [ $i == ${toSend:$((i-1)):1} ]; then
		# toSend=$(sed 's/$i/◉/' <<< $toSend)
	# fi
# done
# notify-send "$toSend"



# dead end
# for i in 1 2 3 4 5
# do
	# x=$((i-1))
	# if [ ${toSend:$x:1} == ${occupied:$x:1} ]; then
	 	# toSend=$(sed 's/$i/◉/' <<< $toSend)
	# else●
	 	# toSend=$(sed 's/$i/○/' <<< $toSend)
	# fi
# done

# don't look at this
# if [ ${toSend:0:1} == ${occupied:0:1} ]; then
	# toSend=$(sed 's/1/◉/' <<< $toSend)
# else
	# toSend=$(sed 's/1/○/' <<< $toSend)
# fi
# if [ ${toSend:1:1} == ${occupied:1:1} ]; then
	# toSend=$(sed 's/2/◉/' <<< $toSend)
# else
	# toSend=$(sed 's/2/○/' <<< $toSend)
# fi
# if [ ${toSend:2:1} == ${occupied:2:1} ]; then
	# toSend=$(sed 's/3/◉/' <<< $toSend)
# else
	# toSend=$(sed 's/3/○/' <<< $toSend)
# fi
# if [ ${toSend:3:1} == ${occupied:3:1} ]; then
	# toSend=$(sed 's/4/◉/' <<< $toSend)
# else
	# toSend=$(sed 's/4/○/' <<< $toSend)
# fi
# if [ ${toSend:4:1} == ${occupied:4:1} ]; then
	# toSend=$(sed 's/5/◉/' <<< $toSend)
# else
	# toSend=$(sed 's/5/○/' <<< $toSend)
# fi

