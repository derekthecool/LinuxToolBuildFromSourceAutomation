#!/bin/bash

# Build script for https://github.com/mwh/dragon.git

# Start build
repo="https://github.com/mwh/dragon.git"
echo "Building: $repo"

# Change directory to where this build.sh script is located
cd "$(dirname "$0")"

# Change directory to the name of the submodule
cd ./dragon

# Run make install
make install

# Print that we are finished with this build
echo "----------------${repo} build complete----------------"
