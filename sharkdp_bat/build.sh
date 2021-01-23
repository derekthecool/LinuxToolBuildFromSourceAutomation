#!/bin/bash

# Change directory to where this build.sh script is located
cd "$(dirname "$0")"

# Change directory to the name of the submodule
cd ./bat

# Install commands
cargo install --locked bat
