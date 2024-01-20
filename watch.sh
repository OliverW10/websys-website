ls src/* | entr -s 'make' &
(cd out && python3 -m http.server)