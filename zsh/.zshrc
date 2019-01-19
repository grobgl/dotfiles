# load oh-my-zsh
export ZSH=/home/georg/dotfiles/submodules/.oh-my-zsh
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`
ZSH_CUSTOM=~/.zsh.d/oh-my-zsh-custom
plugins=(
  git
)

# style {{{1

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"


source $ZSH/oh-my-zsh.sh

export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export TERM_ITALICS=true

# zsh stuff {{{1

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

# allows you to type Bash style comments on your command line
setopt interactivecomments

# spelling corrector
setopt CORRECT


# aliases {{{1

# dotfiles git shortcut
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# conda environments
alias tf='source activate tensorflow'

# aliases for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# convenience aliases for editing configs
alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ei='vim ~/.config/i3/config'
alias s='source ~/.zshrc'

# git shortcuts
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gac='git commit -a -m'
alias gc='git commit -m'
alias gps='git push'

# pi
alias pi='ssh pi@192.168.1.11'

# other
alias py='ipython'

# environment vars {{{1

# use vim as text editor
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR


# add custom scripts to path
export PATH=~/dotfiles/scripts:$PATH

# }}}1

