#!/bin/bash

# Build script for https://github.com/ogham/exa.git

# Change directory to where this build.sh script is located
cd "$(dirname "$0")"

# Move to inside the submodule
cd ./exa

# Build specific commands
cargo build --release

# Optional copy to user software space
sudo cp ./target/release/exa /usr/local/bin/
