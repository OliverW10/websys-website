
PAGES := out/comments.html out/future.html out/index.html out/past.html


website: $(PAGES)
	cp src/websystems.css out/websystems.css

out/%.html: src/%.jinja Makefile
	jinja2 $< > $@