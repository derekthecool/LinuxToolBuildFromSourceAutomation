# Linux Tool Build From Source Automation

The goal of this repository is to easily be able to build from source. The
repository layout includes a main file named build_all.sh and then a subdirectory
for every repository to build. These subdirectories will contain a git submodule
of the desired repositories as well as a build.sh script. 

The build.sh script contains the build specific steps needed for each
repository.

## How To Setup This Repository

```sh
# Clone the repository and initialize the submodules
git clone --recurse-submodules https://github.com/derekthecool/LinuxBuildFromSourceAutomation.git

# Enter repository and run build_all.sh
cd LinuxBuildFromSourceAutomation
./build_all.sh
```
