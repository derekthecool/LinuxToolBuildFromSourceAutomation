#!/bin/bash

# Build script for https://github.com/tmux/tmux
# Requires libevent-dev ncurses-dev build-essential bison pkg-config
# See build instructions at this website https://github.com/tmux/tmux/wiki/Installing

# Change directory to where this build.sh script is located
cd "$(dirname "$0")" || exit

# Change directory to the name of the submodule
cd ./tmux

# tmux specific build steps
sh autogen.sh
./configure
make && sudo make install
