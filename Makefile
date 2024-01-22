
PAGES := out/comments.html out/future.html out/index.html out/past.html


website: $(PAGES)
	cp src/websystems.css out/websystems.css
	cp src/image.jpg out/image.jpg
	cp src/past.svg out/past.svg

out/%.html: src/%.jinja Makefile
	mkdir -p out/
	jinja2 $< > $@