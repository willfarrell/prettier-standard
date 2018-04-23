#!/bin/bash
if [ -f $1 ]; then
	./node_modules/.bin/prettier --write --loglevel=warn $1
else
	./node_modules/.bin/glob-cli $1 | ./node_modules/.bin/prettier --write --loglevel=warn
fi