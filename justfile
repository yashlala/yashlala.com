set ignore-comments

alias s := server
alias serve := server
alias b := build

default:
  just --list

server:
  hugo server -D

build:
  hugo --minify --gc --destination ../public --source ./exampleSite --themesDir ../.. --baseURL https://maolonglong.github.io/hugo-simple/

update-simplecss:
  curl -fSL https://cdn.simplecss.org/simple.css -o ./assets/simple.css

clean:
  rm -r public
