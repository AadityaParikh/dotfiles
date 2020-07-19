#!/bin/sh

option=$(printf "USD_CAD\nCAD_USD" | sed 's/_/ to /g' | rofi -dmenu -p "conversion" | sed 's/ to /_/g')
price=$(echo $option | xargs -I{} curl "https://free.currconv.com/api/v7/convert?q={}&compact=ultra&apiKey=d826856594c27d92238c") | jq ".$option"
echo $price for $option
notify-send $(rofi -dmenu -p "price" | sed "s/$/\*$price/" | bc)
