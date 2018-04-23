#!/bin/bash
./node_modules/.bin/glob-cli $1 | xargs ./node_modules/.bin/standard --fix
