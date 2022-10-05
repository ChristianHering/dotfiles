alias gitdf="/usr/bin/git --git-dir=$HOME/development/other/dotfiles --work-tree=$HOME"

alias startx="startx $XINITRC"

__git_files () { 
    _wanted files expl 'local files' _files     
}

export ZSH="$HOME/.config/zsh/oh-my-zsh"

ZSH_THEME="ch"

plugins=(git)

source $ZSH/oh-my-zsh.sh
