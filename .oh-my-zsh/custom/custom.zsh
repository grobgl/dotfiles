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

# anaconda install location
export PATH="/home/georg/.anaconda3/bin:$PATH"

# }}}1

