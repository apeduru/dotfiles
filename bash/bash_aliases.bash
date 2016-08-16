# unalias 'alias_name' if stuck

# Git
alias gbr='git branch'
alias gbv='git branch -avv'
alias gch='git checkout'
alias gcl='git clone'
alias gdf='git diff'
# alias gdm='git diff master..$(git name-rev --name-only HEAD)'
alias gdm='git diff master'
alias gfa='git fetch --all'
alias glg='git log --graph --oneline'
alias gpl='git pull'
alias grv='git remote -v'
alias gst='git status'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gsh='git stash'

# Directory
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias doc='cd ~/Documents && l'
alias down='cd ~/Downloads && l'
alias dot='cd ~/dotfiles && l'
alias box='cd ~/Dropbox && l'
alias evertz='cd ~/evertz && l'
alias src='cd ~/src && l'

# Letters
alias c='clear'
alias h='history | less +G'

# Servers
alias js='jekyll serve'

# tmux - tmux force support 256 colours
alias tmux='tmux -2'

# Ack is different on Ubuntu
alias ack='ack-grep'

# Grep
alias gri='grep -Hinr --exclude-dir=".git" --color=always'

# Lines of code in current directory
alias lines='find . | wc -l'
