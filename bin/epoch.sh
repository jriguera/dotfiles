#!/bin/bash

# get seconds since epoch
test "x$1" == x && date +%s && exit 0

# or convert epoch seconds to date format (see "man date" for options)
EPOCH="$1"
shift
date -d @"$EPOCH" "$@"

