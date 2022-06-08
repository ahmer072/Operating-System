 #! /bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="SERVICE MANAGEMENT" --text="
OPTION-1 (Open FireFox)
OPTION-2 (Create Task )
OPTION-3 (Go to Main)
")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1) chmod +x firefox.sh
       ./firefox.sh ;;
	2) chmod +x task.sh
       ./task.sh ;;
    3) ./my_menu.sh;;
esac