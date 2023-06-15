#!/bin/bash
# [C] - Flames LLC 20XX
# This script installs Miniforge using Homebrew.
#
# Reference: https://github.com/FlamesLLC/ChatGPT4Games20XX/blob/main/install_miniforge.sh

# Check if Homebrew is installed.
if ! brew -v > /dev/null; then
  echo "Homebrew is not installed. Installing..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Miniforge.
echo "Installing Miniforge..."
brew install --cask miniforge

# Initialize Miniforge.
echo "Initializing Miniforge..."
miniforge init

# Activate Miniforge.
echo "Activating Miniforge..."
source $HOME/.miniforge3/bin/activate

# Install Python.
echo "Installing Python..."
conda install python=3.10

# Install other packages.
echo "Installing other packages..."
conda install -c conda-forge jupyterlab

# Done!
echo "Miniforge has been installed."
