#!/bin/sh -l
set -e
set -x

for pkg in $1; do
    nix-env -i $pkg
done

tectonic $2