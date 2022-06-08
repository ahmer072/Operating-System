#!/bin/bash
ZenityInput=$(zenity --width=350 --height=200 --entry --title="Create Task" --text="
1. Create File
2. Execute File
3. Delete File
")

choice=$(awk -F, '{print $1}' <<<$ZenityInput)

case $choice in
        1) file=$(zenity --width=250 --height=100 --entry --text="Enter file name")
                gedit $file.c
                ./my_menu.sh
                ;;

        2)file=$(zenity --width=250 --height=100 --entry --text=" Enter file name without extension for execute")
         if [ -f "$file.c" ]
         then
                 zenity --width=250 --height=100 --info --text=" File exists "
                 gcc -o $file "$file.c"
                 k=$(./"$file")
                 zenity --width=250 --height=100 --info --text="$k"
                 ./my_menu.sh

         else
                 zenity --width=250 --height=100 --error --title="Error" --text="Not exists first create a file"
                 ./my_menu.sh
         fi
                 ;;

         3)file=$(zenity --width=250 --height=100 --entry --text=" Enter file name for delete")
          if [ -f "$file.c" ]
          then
                  zenity --width=250 --height=100 --info --text="File removed"
                  rm "$file.c"
                  ./my_menu.sh
          else
                 zenity --width=250 --height=100 --error --title="Error" --text="File is already removed/doesnt not exists"
                 ./my_menu.sh
          fi
          ;;

        *)zenity --width=250 --height=100 --error --title="Error" --text="Invalid option"
./my_menu.sh
esac
