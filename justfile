set ignore-comments

alias s := server
alias serve := server
alias b := build

default:
  just --list

server:
  hugo server -D

build:
  hugo --minify --gc --destination ./build

update-simplecss:
  curl -fSL https://cdn.simplecss.org/simple.css -o ./assets/simple.css

deploy: build
  cd build && git add -A && git commit -m "Automatic deploy" && git push

clean:
  rm -r public
