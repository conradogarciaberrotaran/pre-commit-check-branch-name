#!/bin/bash
if [[ $# -lt 2 || "$1" != "--pattern" ]]; then
    echo "Error: --pattern is required"
    echo "Usage: $0 --pattern <regex> [--example <example>]"
    exit 1
fi

PATTERN="$2"

branch=$(git branch --show-current)

if [[ ! $branch =~ $PATTERN ]]; then 
    echo "Wrong branch name: does not match pattern $PATTERN"
    exit 1
fi
