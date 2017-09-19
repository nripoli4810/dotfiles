alias gs='git status'
alias gd='git diff'
alias gf='git fetch'
alias go='git checkout '
alias gcm='git commit -m '
alias gcam='git commit -am '
alias squash2='git rebase -i HEAD~2'
alias la='ls -la'
alias ls='ls -l'
alias amend='git commit -a --amend'
alias wip='git add -u && git commit -m "WIP"'
alias save='git add -A && git commit -m "SAVE POINT"'
alias gp='git push'
alias gpu='git push -u origin '
alias history='git log --follow -p '
alias lg=!'git lg1'
alias lg1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias clearg="clear && git status"