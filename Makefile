all: _site/index.html

_site/index.html: about.md index.html _posts/* css/* .htaccess _config.yml archives.html _includes/* _layouts/* images/.square_generation
	jekyll build

images/.square_generation: images/*jpg
	bash bin/generate_square_images.sh
