#!/bin/bash

# export PATH="$HOME/miniconda3/bin:$PATH"
# export PATH="/usr/local/opt/node@8/bin:$PATH"

# export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"

brew update
brew upgrade npm
brew upgrade fswatch
npm update -g npm
npm update -g browser-sync
gem update bundler
conda update conda -c conda-forge
conda env update
git submodule update --recursive --remote

(
eval "$(conda shell.bash hook)"
conda activate notebook
jupyter labextension update --all
)

# create symlinks

(cd ./docs; bundle update;)
