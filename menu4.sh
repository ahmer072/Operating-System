#!/bin/bash
Folder_name=$(zenity --title="BACKUP" --text "$Enter Folder name" --entry)
newfolder_name=$(zenity --title="New Folder" --text "$Enter New Folder name" --entry)
#echo "enter forlder name: "
#read folder
#echo "enter newforlder name: "
#read newfolder
if [ -d $Folder_name ]
then
    if [ -d $newfolder ]
	then
    zenity --info --text "Folder Exist"	
    cp -r $Folder_name $newfolder_name
    zenity --info --text "BACKUP is Created"
	else
    	
    mkdir $newfolder
    cp -r $Folder_name $newfolder_name
    zenity --info --text "BACKUP is Created"
	fi
else
    	
    mkdir $Folder_name
    if [ -d $newfolder ]
	then
    	
    cp -r $Folder_name $newfolder_name
    zenity --info --text "BACKUP is Created"
	else
    	
    mkdir $newfolder
    cp -r $Folder_name $newfolder_name
    zenity --info --text "BACKUP is Created"
	fi
fi
