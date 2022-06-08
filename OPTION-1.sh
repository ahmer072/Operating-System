#!/bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="OPTION-1" --text="
1. Create File
2. Create Folder
3. Delete File
4. Delete Folder
5. Go to Main
 ")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1) chmod +x Create_File.sh
       ./Create_File.sh;;

	2) chmod +x Create_Folder.sh
       ./Create_Folder.sh;;

    3) chmod +x Delete_File.sh
       ./Delete_File.sh;;

	4) chmod +x Delete_Folder.sh
       ./Delete_Folder.sh;;

    5) chmod +x my_menu.sh
       ./my_menu.sh;;
  *) zenity --width=150 --height=100 --error --title="Error" --text="An error occured";;
esac