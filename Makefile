all: _site/index.html

_site/index.html: about.md index.html _posts/* css/* .htaccess _config.yml archives.html _includes/* _layouts/* images/.square_generation images/.youtube_generation
	jekyll build

images/.youtube_generation: _posts/*
	bash bin/youtube_image.sh

images/.square_generation: images/*jpg
	bash bin/generate_square_images.sh
