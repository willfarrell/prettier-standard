#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# prettier
$DIR/node_modules/.bin/prettier --write --loglevel=warn $1

# standard
PATTERN=${1}
PATTERN=${PATTERN//\{js,[a-z,]*\}/js}
PATTERN=${PATTERN//\{[a-z,]*,js,[a-z,]*\}/js}
PATTERN=${PATTERN//\{[a-z,]*,js\}/js}

$DIR/node_modules/.bin/standard --fix $PATTERN
