# Config
#### Mac OS High Sierra

**Config** is my opinionated setup of my Mac's development environment. It gets me up to speed with Homebrew, Git, Node, GitHub, and more so I can more quickly get back to work.

## Contents

TBD

| File | Description |
| --- | --- |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |


## Installation

### Prep OS X

- Enter `xcode-select --install` in a Terminal window.

OR

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/mrbrianhinton/config.git && cd config && source flipflop.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source flipflop.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source flipflop.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/mrbrianhinton/config/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,flipflop.sh,.macos}
```

To update later on, just run that command again.
