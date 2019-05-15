# Config
#### Mac OS High Sierra

**Config** is my opinionated setup of my Mac's development environment. It gets me up to speed with Homebrew, Git, Node, PHP, GitHub, and more so I can more quickly get back to work.

## Contents

TBD

| File | Description |
| --- | --- |
| `.gitignore_global` | The ignore file that I use everywhere. |


## Installation

### Prep OS X

- Enter `xcode-select --install` in a Terminal window.

OR

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I keep it in `$HOME/.dotfiles`) The bootstrapper script will install all my developer tools and configurations.

```bash
git clone https://github.com/mrbrianhinton/.dotfiles.git && source install.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source install.sh
```
