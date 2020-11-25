# General
alias reloadzsh="source ~/.zshrc"
alias editzsh="vim ~/.zshrc"
alias see="cat ~/.alias.zsh"
alias h="cd ~"
alias w="cd ~/Workspace"
alias ..="cd .."
alias c="clear"
alias showssh="cat ~/.ssh/id_rsa.pub"
alias l="ls -a"

# Browser
alias firefox="/Applications/Firefox\ Developer\ Edition.app/Contents/MacOS/firefox -private-window"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --incognito"

# Git
alias gs="git status"
alias ga="git add ."
alias gcm="git commit -am"
alias gl="git log --pretty=oneline -n 20 --graph --abbrev-commit"
alias gck="!f() { git checkout -b \"$1\" 2> /dev/null || git checkout \"$1\"; }; f"
alias gps="git push origin"
alias gpl="git pull origin"
alias gb="git branch -a"
alias gd="git diff"
alias gdc="git diff --cached"
alias gcl="git clone"
alias gf="git fetch"
alias grao="git remote add origin"
alias gpeople="shortlog -n -s --no-merges"
alias gpurge="!git checkout master && git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d && git checkout -"
alias daily=!"git log --reverse --branches --since=$(if [[ "Mon" == "$(date +%a)" ]]; then echo "friday"; else echo "yesterday"; fi) --author=$(git config --get user.email) --format=format:'%C(cyan) %ad %C(yellow)%h %Creset %s %Cgreen%d' --date=local"
alias glocal="git config --list --local"
alias gglobal="git config --list --global"

# Docker
alias rmc="docker ps -a -q | xargs docker rm"
alias rmi="docker images --filter dangling=true -q | xargs docker rmi"
alias lzd="lazydocker"

# Brew
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"

# Mac
alias rmds="find . -name '.DS_Store' -type f -print -delete"
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"