export http_proxy="http://127.0.0.1:2000"
export https_proxy="http://127.0.0.1:2000"

ZSH_THEME="ys"
ZSH_CUSTOM=$ZSH/custom

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#808080'

source $XDG_CONFIG_HOME/zsh/zsh.zsh
source $ZSH/oh-my-zsh.sh #if I put this line after vi mode, or do not have this line, the shell will say: `/path/to/.zshrc:bindkey:157: no such keymap `menuselect``
source $XDG_CONFIG_HOME/zsh/vi-mode.zsh
source $XDG_CONFIG_HOME/zsh/aliasrc
source $XDG_CONFIG_HOME/zsh/fixed.zsh

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
