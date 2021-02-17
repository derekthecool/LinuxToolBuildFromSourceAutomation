#!/bin/bash

# Build script for https://github.com/sharkdp/bat.git

# Change directory to where this build.sh script is located
cd "$(dirname "$0")"

# Change directory to the name of the submodule
cd ./bat

# Build specific commands
cargo install --locked bat
