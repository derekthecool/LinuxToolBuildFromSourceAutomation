#!/bin/bash

# TODO: check for required system dependencies

# Update all git submodules
git pull --recurse-submodules

# Variable to keep track of how many builds we have done
buildCount=0

# Build all submodule repositories in this project
for repo in */; do
  # Print that we are starting with this build
  echo "----------------${repo} build starting----------------"

  # Enter build directory
  cd "$repo"

  # Run the build script for that submodule
  ./build.sh

  # Increment the build count
  let buildCount++

  # Return to starting point
  cd ..

  # Print that we are finished with this build
  echo -e "----------------${repo} build complete----------------\n"
done

# Specify how many builds were completed successfully
echo -e "\n\nBuilds completed: $buildCount"
