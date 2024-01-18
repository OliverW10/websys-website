ls src/* | entr -s './build.sh' &
(cd out && python3 -m http.server)