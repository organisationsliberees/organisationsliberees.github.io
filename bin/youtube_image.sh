#!/bin/bash


rgrep embed_youtube _posts/* | sed 's/.*embed_youtube: //' | while read yt; do 
	test -e "images/"$yt".jpg" || curl -s "http://i.ytimg.com/vi/"$yt"/maxresdefault.jpg" > "images/"$yt".jpg"
	find images/ -size 1097c -exec rm '{}' ';'
        test -e "images/"$yt".jpg" || curl -s "http://i.ytimg.com/vi/"$yt"/0.jpg" > "images/"$yt".jpg" ; 
done

touch images/.youtube_generation
