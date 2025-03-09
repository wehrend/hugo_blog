
# ~/development/hugo/blog#
up:
	hugo serve  --disableFastRender --renderStaticToDisk --ignoreCache --config ./content/config.toml


deployment:
	rsync -rav public/ wehrend@giclas.uberspace.de:/var/www/virtual/wehrend/html --delete

cleanup:
	rm -rf wehrend.github.io/
