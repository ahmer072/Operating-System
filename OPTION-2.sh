#!/bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="Rights of Files" --text="
1. All Rights
2. Only Read and Write
3. Only Read and Execute
4. ONly Write and Execute
5. Only Write
6. Only Read
7. Only Execute
8. NOT All Rights
 ")

 choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1) filename=$(zenity --entry --text "Please enter your file name") 
       cd ..
       chmod 777 $filename
       ./my_menu.sh;;

	2) filename=$(zenity --entry --text "Please enter your file name") 
       cd ..
       chmod 666 $filename
       ./my_menu.sh;;

    3) filename=$(zenity --entry --text "Please enter your full name") 
       cd ..
       chmod 555 $filename
       ./my_menu.sh;;

    4) filename=$(zenity --entry --text "Please enter your full name") 
       cd ..
       chmod 333 $filename
       ./my_menu.sh;;

    5) filename=$(zenity --entry --text "Please enter your full name") 
       cd ..
       chmod 222 $filename
       ./my_menu.sh;;

    6) filename=$(zenity --entry --text "Please enter your full name") 
       cd ..
       chmod 444 $filename
       ./my_menu.sh;;

	7) filename=$(zenity --entry --text "Please enter your full name") 
       cd ..
       chmod 111 $filename
       ./my_menu.sh;;

    8) filename=$(zenity --entry --text "Please enter your full name") 
       cd ..
       chmod 000 $filename
       ./my_menu.sh;; 
    *) zenity --width=150 --height=100 --error --title="Error" --text="An error occured";;
esac