#! /bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="OPERATING SYSTEM" --text="
OPTION-1 (Create Process or Threads)
OPTION-2 (Kill Process )
OPTION-3 (Process Synchronization)
")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1) chmod +x Create_proc_thread.sh
       ./Create_proc_thread.sh
       ;;
	2) chmod +x kill.sh
       ./kill.sh ;;

    3) chmod +x ProSynchro.c
       gcc -o ProSynchro ProSynchro.c
       ./ProSynchro;;
    *) zenity --width=150 --height=100 --error --title="Error" --text="An error occured";;
           
esac
