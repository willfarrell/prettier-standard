#!/bin/bash
# prettier
if [ -f $1 ]; then
	./node_modules/.bin/prettier --write --loglevel=warn $1
else
	./node_modules/.bin/glob-cli $1 | ./node_modules/.bin/prettier --write --loglevel=warn
fi

# standard
if [ -f $1 ] && [ "$1" == "*.js" ]; then
	./node_modules/.bin/standard --fix $1
else
	./node_modules/.bin/glob-cli $1 | grep -e '\.js$' | ./node_modules/.bin/standard --fix
fi