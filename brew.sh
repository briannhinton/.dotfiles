#!/usr/bin/env bash

# Install homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew doctor

// Install brew-cask
brew tap caskroom/cask

// Install alternate versions tap
brew tap caskroom/versions

// Install necessary apps
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install firefoxnightly
brew cask install atom
brew cask install keepingyouawake
brew cask install spectacle
brew cask install framer
brew cask install flinto
brew cask install slack-beta
brew cask install appcleaner
brew cask install github-beta
brew cask install hyper
brew cask install sketch

# Install command-line tools using Homebrew.

# Install node and npm
brew install node

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

# Install trash
npm install --global trash-cli

# Remove outdated versions from the cellar.
brew cleanup
