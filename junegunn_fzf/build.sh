#!/bin/bash

# Build script for https://github.com/junegunn/fzf

# Change directory to where this build.sh script is located
cd "$(dirname "$0")" || exit

# Change directory to the name of the submodule
cd ./fzf

# fzf specific build steps
./install
