#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )/$(dirname "$(readlink "$0")")/node_modules/.bin"

PATTERN=${1}
PATTERN=${PATTERN//\{js,[a-z,]*\}/js}
PATTERN=${PATTERN//\{[a-z,]*,js,[a-z,]*\}/js}
PATTERN=${PATTERN//\{[a-z,]*,js\}/js}

if [ "$PATTERN" == "*.js" ]; then
  $DIR/standard --fix $PATTERN
fi
