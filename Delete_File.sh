#!/bin/bash

Delete_File=$(zenity --title="New File" --text "$Enter File Name" --entry)
cd ..
if [ -f $Delete_File ]
then
	rm $Delete_File
	zenity --info --text "File is Deleted"

else
	zenity --error --text "File is not Found"
fi
