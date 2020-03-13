#!/bin/sh -l
set -e
set -x

# There was only one argument, call tectonic directly
if [ -z "$2" ]; then
    tectonic $1
else
    # Optionally, we install the packages required by the build.
    nix-env -f "<nixpkgs>" -iA $1

    # Compile the document
    tectonic $2
fi