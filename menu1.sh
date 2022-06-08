 #! /bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="USER MANAGEMENT" --text="
OPTION-1 (Create and Delete File or Folder)
OPTION-2 (Change Rights of File )
OPTION-3 (Search Files)
OPTION-4 (Go To Main)
")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in 
	1) chmod +x OPTION-1.sh
       ./OPTION-1.sh
       ./menu1.sh ;;
	2) chmod +x OPTION-2.sh
       ./OPTION-2.sh
       ./menu1.sh ;;
	3) chmod +x OPTION.3.sh
       ./OPTION.3.sh
       ./menu1.sh ;;
    4) chmod +x my_menu.sh
       ./my_menu.sh;;
  *) zenity --width=150 --height=100 --error --title="Error" --text="An error occured";;
esac
