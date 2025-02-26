
# ~/development/hugo/blog#
version="klakegg/hugo:0.107.0-ext-asciidoctor"
pwd_ = "/home/sven/development/hugo"

pull:
	docker login
	docker pull $(version)

up:
	hugo serve  --disableFastRender --renderStaticToDisk  --config ./content/config.toml


deployment:
	rsync -rav public/ wehrend@giclas.uberspace.de:/var/www/virtual/wehrend/html --delete

cleanup:
	rm -rf public/
