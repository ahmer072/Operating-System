#!/bin/bash

Create_Folder=$(zenity --title="New Folder" --text "$Enter Folder Name" --entry)
cd ..
if [ -d $Create_Folder ]
then
	zenity --error --text "Already Folder Exist"

else
	mkdir $Create_Folder
	zenity --info --text "Folder is Created"
fi
