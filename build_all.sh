#!/bin/bash

# TODO: check for required system dependencies

# Variable to keep track of how many builds we have done
buildCount=0

# Build all submodule repositories in this project
for build in */; do
  # Enter build directory
  cd "$build"

  # Run the build script for that submodule
  ./build.sh

  # Increment the build count
  let buildCount++

  # Return to root of the repository where this script (build_all.sh) is at
  cd "$(dirname "$0")"
done

# Specify how many builds were completed successfully
echo -e "\n\nBuilds completed: $buildCount"
