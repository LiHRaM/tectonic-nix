#!/bin/sh -l
set -e
set -x

# There was only one argument
if [ -z "$2" ]; then
    tectonic $1
else
    nix-env -f "<nixpkgs>" -iA $1
    tectonic $2
fi