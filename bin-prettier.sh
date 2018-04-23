#!/bin/bash
./node_modules/.bin/glob-cli $1 | xargs ./node_modules/.bin/prettier --write --loglevel=warn
