echo $(mpc listall | sed 's/\.mp3//g' | rofi -i -dmenu -p "song" | sed -e 's/^/artist\ \"/' -e 's/\ \-\ /\"\ title\ \"/' -e 's/$/\"/')
mpc searchplay $(mpc listall | sed 's/\.mp3//g' | rofi -i -dmenu -p "song" | sed -e 's/^/artist\ \"/' -e 's/\ \-\ /\"\ title\ \"/' -e 's/$/\"/')
