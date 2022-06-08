#!/bin/bash

Create_File=$(zenity --title="New File" --text "$Enter File Name" --entry)
cd ..
if [ -f $Create_File ]
then
	zenity --error --text "Already File Exist"

else
	touch $Create_File
	zenity --info --text "File is Created"
fi
