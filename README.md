# Config
#### OS X El Capitan

**Config** is my checklist I follow to set up a new Mac's development environment. It gets me up to speed with Homebrew, Git, Ruby, Node, GitHub, and more so I can more quickly get back to work.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. Includes a variety of useful aliases. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

### 2. Prep Terminal

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`

### 3. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 4. Setup Homebrew
TODO: Change how homebrew is installed. Don't install in system.
- Install Homebrew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Install Cask `brew tap caskroom/cask`

### 5 . Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.2.3`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.2.3`.
- Install bundler `gem install bundler`

*Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS X's system Ruby.*

### 6. Additional dependencies

- Install node via Homebrew: `brew install node`.

### 7. Setup Atom

- Install Atom `brew cask install atom`
- Enable `atom` Terminal commands: from Atom.app, open the Atom menu and select *Install Shell Commands*
- Install favorite packages
  - [Wrap in tag](https://atom.io/packages/atom-wrap-in-tag)
  - [Selector to tag](https://atom.io/packages/selector-to-tag)
  - [Linter](https://atom.io/packages/linter) and [`.scss` linter](https://atom.io/packages/linter-scss-lint)
  
### 8. Setup HyperTerm
- Install HyperTerm 'brew cask install hyperterm'
- https://github.com/jxnblk/hypercolors

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Thanks!

To mdo.
