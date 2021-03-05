export http_proxy="http://127.0.0.1:2000"
export https_proxy="http://127.0.0.1:2000"
# export all_proxy="http://127.0.0.1:8889"

ZSH_THEME="ys"
ZSH_CUSTOM=$ZSH/custom

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#808080'

# source $XDG_CONFIG_HOME/zsh/fzf.sh
# source $XDG_CONFIG_HOME/zsh/completion.zsh
source $XDG_CONFIG_HOME/zsh/zsh.zsh
source $ZSH/oh-my-zsh.sh #if I put this line after vi mode, or do not have this line, the shell will say: `/path/to/.zshrc:bindkey:157: no such keymap `menuselect``
source $XDG_CONFIG_HOME/zsh/vi-mode.zsh
source $XDG_CONFIG_HOME/zsh/alias.zsh

tf(){
	t -f $1
}

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
# export PS1=" $PS1"'[$(t | wc -l | sed -e"s/ *//")]'
