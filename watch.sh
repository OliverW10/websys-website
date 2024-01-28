ls src/* | entr -s 'python3 build.py' &
(cd src && python3 -m http.server)