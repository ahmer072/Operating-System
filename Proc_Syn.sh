y=$(zenity --entry --text="Enter an input process filename?")
#z=$(zenity --entry --text="Enter an output command process?")
gcc -o ProSynchro ProSynchro.c
output=$(./ProSynchro.c $y)
zenity --info --text="$output"
