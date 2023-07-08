#!/bin/sh

SCRIPT_NAME=$(basename $0)

help() {
    echo "usage: $SCRIPT_NAME <text>"
}

if [[ $# -eq 0 ]] ; then
    help
    >&2 echo "$SCRIPT_NAME: no argument provided"
    exit 1
fi

echo $(echo $1 | sed -e "s/[lr]/w/g" | sed -e "s/[LR]/W/g")
