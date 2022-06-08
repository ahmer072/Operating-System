#! /bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="OPERATING SYSTEM" --text="
OPTION-1 Create Process
OPTION-2 Create Thread
")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1)  chmod +x Create_Process.c
        gcc -o Create_Process Create_Process.c
        ./Create_Process.c
        zenity --width=150 --height=100 --info --text="Process created"
        k=$(./Create_Process)
        zenity --width=350 --height=200 --info --text="$k"
        ./my_menu.sh
       ;;
	2) chmod +x Create_Thread.c
       ./Create_Thread.c
       zenity --width=150 --height=100 --info --text="Threads created."
       gcc -o Create_Thread Create_Thread.c -lpthread
       K=$(./Create_Thread)
       zenity --width=150 --height=100 --info --text="$K" 
       ./my_menu.sh;;
  *) zenity --width=150 --height=100 --error --title="Error" --text="An error occured";;
           
esac