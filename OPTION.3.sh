filename=$(zenity --entry --text "Please enter your file name") 
zenity --width=250 --height=100 --info --text "Your File is Searched \n  $(locate $filename)" 


./my_menu.sh