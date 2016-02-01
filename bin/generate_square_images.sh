#!/bin/bash


ls images/*jpg | grep -v squa | sed 's/images.//' | sed 's/.jpg//' | while read id; do 
	if test "images/"$id".jpg" -nt "images/.square_generation" ; then
	convert -resize 480x480 -background black -gravity North -extent 480x480 "images/"$id".jpg" "images/"$id".square.jpg" ; 
	fi
done

touch images/.square_generation
