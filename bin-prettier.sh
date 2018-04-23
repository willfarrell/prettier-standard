#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )/$(dirname "$(readlink "$0")")/node_modules/.bin"
$DIR/prettier --write --loglevel=warn $1
