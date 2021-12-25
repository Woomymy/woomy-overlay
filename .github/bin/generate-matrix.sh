#!/usr/bin/env bash
# Set matrix output
UPDATES=$(cat updates.json)
echo "::set-output name=matrix::${UPDATES}"
