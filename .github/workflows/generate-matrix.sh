#!/usr/bin/env bash
UPDATES=$(cat updates.json)
echo $UPDATES
echo "::set-output name=matrix::${UPDATES}"
