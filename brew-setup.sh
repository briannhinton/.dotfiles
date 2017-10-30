#!/usr/bin/env bash

# Install homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew doctor

// Install brew-cask
brew install caskroom/cask/brew-cask

brew update
brew doctor

// Install alternate versions tap
brew tap caskroom/versions

brew update
brew doctor

// Install necessary apps
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install firefox-nightly
brew cask install atom
brew cask install keepingyouawake
brew cask install spectacle
brew cask install dropbox
brew cask install framer
brew cask install flinto
brew cask install slack-beta
brew cask install appcleaner
brew cask install github-beta
