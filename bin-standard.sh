#!/bin/bash

if [ -f $1 ] && [ "$1" == "*.js" ]; then
  ./node_modules/.bin/standard --fix $1
else
  ./node_modules/.bin/glob-cli $1 | grep -e '\.js$' | ./node_modules/.bin/standard --fix
fi
