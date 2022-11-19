! /bin/bash

myFile=$(zenity --file-selection \
	--title "Select Files" \
	--filename "/home/${USER}/")
	awk -v DATE=$(date --date='2 year' +'%Y-%m-%d') -F, -f ./createUser.awk $myFile
