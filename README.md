# Config
#### Mac OS High Sierra

**Config** is my checklist I follow to set up a new Mac's development environment. It gets me up to speed with Homebrew, Git, Node, GitHub, and more so I can more quickly get back to work.

## Contents

| File | Description |
| --- | --- |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Checklist

### 1. Prep OS X

- Enter `xcode-select --install` in a Terminal window.

OR

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.


### 2. Prep Terminal

- Add [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`

### 3. Setup Homebrew
- Install Homebrew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Check Homebrew was installed correctly `brew doctor`
- Install Versions `brew tap caskroom/versions`

### 4. Secure and setup Git(Hub) access

- Enter `brew update`
- Enter `brew install git`
- Check Git version `git --version`
- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 5. Additional dependencies

- Install node via Homebrew: `brew install npm`.

### 6. Setup Atom

- Install Atom `brew cask install atom`
- Enable `atom` Terminal commands: from Atom.app, open the Atom menu and select *Install Shell Commands*
- Install favorite packages
  - [Wrap in tag](https://atom.io/packages/atom-wrap-in-tag)
  - [Selector to tag](https://atom.io/packages/selector-to-tag)
  - [Linter](https://atom.io/packages/linter) and [`.scss` linter](https://atom.io/packages/linter-scss-lint)
  
### 7. Install additional applications

- Use script to install additional applications (TODO: Add script)  

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**
