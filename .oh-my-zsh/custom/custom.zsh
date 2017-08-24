# zsh configs
# grobgl

# zsh stuff {{{1

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

# allows you to type Bash style comments on your command line
setopt interactivecomments

# Zsh has a spelling corrector
setopt CORRECT


# aliases {{{1

# dotfiles git shortcut
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# conda environments
alias tf='source activate tensorflow'

# connect to raspberry pi
alias pi='ssh pi@192.168.0.24'

# aliases for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# convenience aliases for editing configs
alias ev='vim ~/.vim_runtime/my_configs.vim'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.oh-my-zsh/custom/custom.zsh'
alias ei='vim ~/.config/i3/config'


# software configs {{{1

# tilix fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi


# environment vars {{{1

# 256 color support
export TERM="xterm-256color"

# use vim as text editor
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR


# style {{{1

# set up base16 shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


# path {{{1

# anaconda install location
PATH="/home/georg/.anaconda3/bin:$PATH"

# get-shit-done
PATH="/home/georg/.repos/get-shit-done:$PATH"

export PATH

# }}}1

