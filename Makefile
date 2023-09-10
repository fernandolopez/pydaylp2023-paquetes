all:
	cd reveal.js && npm run start

static:
	rm -fr static
	mkdir static
	cd reveal.js && npm run build
	cp -r reveal.js/dist static/
	cp -r reveal.js/plugin static/
	cp -r static.html static/index.html
	cp -r assets static/

.PHONY: all static
