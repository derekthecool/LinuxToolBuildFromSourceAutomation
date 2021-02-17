#!/bin/bash

# Build script for https://github.com/neovim/neovim

# Change directory to where this build.sh script is located
cd "$(dirname "$0")"

# Change directory to the name of the submodule
cd ./neovim

# Neovim specific build steps
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
