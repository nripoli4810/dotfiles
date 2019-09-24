export PATH=$HOME/bin:/usr/local/bin:$PATH

# asdf
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash


# nodenv
export NODENV_ROOT="$HOME/.nodenv"
export PATH="$HOME/.nodenv/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH:~/.nodenv/shims
eval "$(nodenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# android
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home/

# YVM
export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(zsh-nvm)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#docker
alias dcu='docker-compose up'
alias dcs='docker-compose stop'

#git
alias amend='git commit -a --amend'
alias clearg="clear && git status"
alias gcam='git commit -am '
alias gcm='git commit -m '
alias gd='git diff'
alias gf='git fetch'
alias go='git checkout '
alias gp='git push'
alias gpf='git push --force'
alias gpu='git push -u origin '
alias gs='git status'
alias gss='git status -s'
alias history='git log --follow -p '
alias la='ls -la'
alias lg=!'git lg1'
alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias lg3="git log --graph --date-order --date=short --pretty=format:'%C(auto)%h%d %C(reset)%s %C(bold blue)%ce %C(reset)%C(green)%cr (%cd)'"
alias ls='ls -l'
alias prune='git fetch --prune'
alias rb='git branch -D '
alias rob='git push origin -d '
alias save='git add -A && git commit -m "SAVE POINT"'
alias searchContents='searchCommitContents'
alias search='searchCommitMessages'
alias squash2='git rebase -i HEAD~2'
alias squashx='gitrebaseX'
alias subup='git submodule update --init --recursive'
alias wip='git add -u && git commit -m "WIP"'
alias branch-count='git branch -la | wc -l'

function squash {
	echo Rebasing $1 commits;
	git rebase -i HEAD~$1;
};

function gsContents {
        echo Searching commit contents for: $1;
        git grep $1 $(git rev-list --all);
};

function gsCommitMessages {
        echo Searching commit messages for: $1;
        git log --all --grep=$1;
};

# React Native
REACT_EDITOR=code

alias rna='react-native run-android'
alias rni='react-native run-ios'

# open vscode
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
};

DEFAULT_USER="<change me>"
FASTLANE_USER="<change me>"



bindkey "[D" backward-word
bindkey "[C" forward-word
