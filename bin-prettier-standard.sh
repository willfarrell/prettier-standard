#!/bin/bash
./node_modules/.bin/glob-cli $1 | xargs ./node_modules/.bin/prettier --write --loglevel=warn
./node_modules/.bin/glob-cli $1 | grep -e '\.js$' | ./node_modules/.bin/standard --fix
