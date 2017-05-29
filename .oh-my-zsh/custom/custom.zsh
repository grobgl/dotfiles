# zsh configs
# grobgl

# aliases {{{1

# dotfiles git shortcut
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# conda environments
alias tf='source activate tensorflow'


# software configs {{{1

# tilix fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# path {{{1

# anaconda install location
PATH="/home/georg/.anaconda3/bin:$PATH"

# get-shit-done
PATH="/home/georg/.repos/get-shit-done:$PATH"

export PATH

# }}}1

