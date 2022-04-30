#!/bin/bash

# Install a Bundler
gem install bundler
bandle install

# Install Dependencies
gem install tty
bundle add tty

gem install tty-prompt
bundle add tty-prompt

gem install tty-font
bundle add tty-font

gem install rainbow
bundle add rainbow

# Update Gem Files
bundle install 

# Run Application from src
ruby main.rb