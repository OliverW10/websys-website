mkdir -p out
jinja2 src/index.jinja > out/index.html
jinja2 src/future.jinja > out/future.html
jinja2 src/past.jinja > out/past.html
jinja2 src/comments.jinja > out/comments.html
cp src/websystems.css out/websystems.css