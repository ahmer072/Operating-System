z=$(zenity --width=300 --height=200 --entry --title="Process IDs" --text="\n Which process you want to Kill?? \n\n $(ps)")

gcc -o taskkill taskkill.c
y=$(./taskkill $z)
zenity --width=150 --height=100 --info --text="$y"
./my_menu.sh