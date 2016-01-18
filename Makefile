all: _site/index.html

_site/index.html: about.md index.html _posts/* css/* .htaccess _config.yml archives.html _includes/* _layouts/*
	jekyll build
