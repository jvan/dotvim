#!/bin/bash
#
# Install script for VIM config files
#

# Get name of directory where install script is located
VIM_DIR=`dirname $0`

# Create symbolic links to .vimrc and .gvimrc files

echo " -- linking $VIM_DIR/vimrc to $HOME/.vimrc"
ln -s $VIM_DIR/vimrc $HOME/.vimrc

echo " -- linking $VIM_DIR/gvimrc to $HOME/.gvimrc"
ln -s $VIM_DIR/gvimrc $HOME/.gvimrc

# Initialize and update submodules

pushd $VIM_DIR

echo " -- initializing git submodules"
git submodule init

echo " -- updating git submodules"
git submodule update

popd
