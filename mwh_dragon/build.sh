#!/bin/bash

# Build script for https://github.com/mwh/dragon.git

# Change directory to where this build.sh script is located
cd "$(dirname "$0")"

# Change directory to the name of the submodule
cd ./dragon

# Run build commands
make install
