#!/bin/bash

PATTERN=${1}
PATTERN=${PATTERN//\{js,[a-z,]*\}/js}
PATTERN=${PATTERN//\{[a-z,]*,js,[a-z,]*\}/js}
PATTERN=${PATTERN//\{[a-z,]*,js\}/js}

./node_modules/.bin/standard --fix $PATTERN
