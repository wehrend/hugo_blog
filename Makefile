
# ~/development/hugo/blog#
version="klakegg/hugo:0.112.0-ext-asciidoctor"
pwd_ = "/home/sven/development/hugo"

pull:
	docker login
	docker pull $(version)

up:
	docker run  -it -v $(pwd_):/src -p 1313:1313 $(version) server  --disableFastRender --renderToDisk --verbose


deployment:
	rsync -rav --progress public/ wehrend@giclas.uberspace.de:/var/www/virtual/wehrend/html --delete

cleanup:
	rm -rf public/
