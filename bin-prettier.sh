#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../prettier-standard-cli"
$DIR/node_modules/.bin/prettier --write --loglevel=warn $1
