#!/bin/bash

Delete_Folder=$(zenity --title="New File" --text "$Enter File Name" --entry)
cd ..
if [ -d $Delete_Folder ]
then
	rmdir $Delete_Folder
	zenity --info --text "Folder is Deleted"

else
	zenity --error --text "Folder is not Found"
fi
