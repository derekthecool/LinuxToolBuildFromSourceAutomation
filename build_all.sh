#!/bin/bash

# TODO: check for required system dependencies

# Update all git submodules
git submodule update --recursive --remote

# Variable to keep track of how many builds we have done
buildCount=0

# Color codes for printing
normal="\e[39m"
green="\e[92m"

# Build all submodule repositories in this project
for repo in */; do
  # Print that we are starting with this build
  echo -e "$green----------------${repo} build starting----------------$normal"

  # Enter build directory
  cd "$repo" || exit

  # Run the build script for that submodule
  ./build.sh

  # Increment the build count
  let buildCount++

  # Return to starting point
  cd ..

  # Print that we are finished with this build
  echo -e "$green----------------${repo} build complete----------------$normal\n"
done

# Specify how many builds were completed successfully
echo -e "\n\nBuilds completed: $green$buildCount$normal"
