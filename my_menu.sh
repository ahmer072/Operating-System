#! /bin/bash

ZenityInput=$(zenity --width=350 --height=200 --entry --title="MAIN MENU" --text="
1. User Management
2. Service Management
3. Process Management
4. Backup
" --ok-label "ok" --cancel-label "Shutdown PC")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1) chmod +x menu1.sh
       ./menu1.sh;;
    2) chmod +x menu2.sh
       ./menu2.sh ;;
    3) chmod +x menu3.sh
       ./menu3.sh ;;
    4) chmod +x menu4.sh
       ./menu4.sh ;;
    *) zenity --width=150 --height=100 --error --title="Error" --text "This is an Error";;
esac
