# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='atom ~/.gitconfig'
alias editbash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
alias brian=sudo

## Useful Utilities
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

## Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

## Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

## Empty the Trash on all mounted volumes and the main HDD
## Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

## Switch repos
DIR=~/work
alias h='cd ~/'
alias w='cd ${DIR}'

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
