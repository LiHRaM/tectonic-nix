#!/bin/sh -l
set -e

if [ ! -n $1]; then
    nix-env -i $1
fi
tectonic $2