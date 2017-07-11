# Config
#### Mac OS High Sierra

**Config** is my checklist I follow to set up a new Mac's development environment. It gets me up to speed with Homebrew, Git, Ruby, Node, GitHub, and more so I can more quickly get back to work.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the [Upterm](https://github.com/railsware/upterm) (or Terminal.app) prompt and echoes the currently checked out Git branch. Includes a variety of useful aliases. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

OR

- Enter `xcode-select --install` in a Terminal window.

### 2. Prep Terminal

- Add [`.bash_profile`](/.bash_profile) to .bash_profile if exists, or copy
- Add [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`

### 3. Setup Homebrew
- Install Homebrew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Check Homebrew was installed correctly `brew doctor`
- Install Versions `brew tap caskroom/versions`

### 4. Secure and setup Git(Hub) access

- Enter `brew update` in Upterm
- Enter `brew install git`
- Check Git version `git --version`
- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 5 . Setup Ruby

- Disable documentation installation: `echo "gem: --no-document" >> ~/.gemrc`
- Install RVM: `curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails`.
- Ensure that RVM is up-to-date: `rvm get stable --autolibs=enable --auto-dotfiles`
- Install the latest Ruby: `rvm install 2.4.1`
- Make it the global version of Ruby: `rvm use 2.4.1 --default`.
- Install bundler `gem install bundler`

### 6. Additional dependencies

- Install node via Homebrew: `brew install npm`.

### 7. Setup Atom

- Install Atom `brew cask install atom`
- Enable `atom` Terminal commands: from Atom.app, open the Atom menu and select *Install Shell Commands*
- Install favorite packages
  - [Wrap in tag](https://atom.io/packages/atom-wrap-in-tag)
  - [Selector to tag](https://atom.io/packages/selector-to-tag)
  - [Linter](https://atom.io/packages/linter) and [`.scss` linter](https://atom.io/packages/linter-scss-lint)

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
