#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r $HOME/.byobu/prompt ] && . $HOME/.byobu/prompt   #byobu-prompt#

# yep
alias yep='yay -Syu --ignore nvidia-dkms --ignore nvidia-utils --ignore lib32-nvidia-utils'

# golang
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

# git-completion
source /usr/share/git/completion/git-completion.bash

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# pip bin path 
export PATH=$HOME/.local/bin:$PATH

# nextcloud bin
export PATH=$HOME/Nextcloud/bin:$PATH

# starship
eval "$(starship init bash)"
