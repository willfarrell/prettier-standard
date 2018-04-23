#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )/$(dirname "$(readlink "$0")")"

$DIR/bin-prettier.sh $1
$DIR/bin-standard.sh $1
