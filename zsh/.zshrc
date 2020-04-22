HISTSIZE=20000
SAVEHIST=20000
HISTFILE=/home/$USER/.cache/zsh/history.sh

export http_proxy="http://127.0.0.1:2000"
export https_proxy="http://127.0.0.1:2000"

export RANGER_LOAD_DEFAULT_RC=FALSE

export ZSH_DISABLE_COMPFIX=true

# ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# ZSH_THEME="random"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )


CASE_SENSITIVE="false" # case-sensitive completion, set `off` to use the following
HYPHEN_INSENSITIVE="true" # _ and - will be interchangeable.

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Command auto-correction.
#ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy/mm/dd/"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh #if I put this line after vi mode, or do not have this line, the shell will say: `/path/to/.zshrc:bindkey:157: no such keymap `menuselect``

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)  # Include hidden files

#export MANPATH=""
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


[ -f "$XDG_CONFIG_HOME/zsh/aliasrc" ] && source "$XDG_CONFIG_HOME/zsh/aliasrc"

# vi mode
bindkey -v
KEYTIMEOUT=1 # recommend to set '1' if you're using vi mode

bindkey -M vicmd "k" vi-insert
bindkey -M vicmd "K" vi-insert-bol
bindkey -M vicmd "n" vi-backward-char
bindkey -M vicmd "i" vi-forward-char
bindkey -M vicmd "N" vi-beginning-of-line
bindkey -M vicmd "I" vi-end-of-line
bindkey -M vicmd "e" down-line-or-history
bindkey -M vicmd "u" up-line-or-history
bindkey -M vicmd "l" undo
bindkey -M vicmd "=" vi-repeat-search
bindkey -M vicmd "h" vi-forward-word-end

# Use vim keys in tab complete menu:
bindkey -M menuselect 'n' vi-backward-char
bindkey -M menuselect 'u' vi-up-line-or-history
bindkey -M menuselect 'i' vi-forward-char
bindkey -M menuselect 'e' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
function zle-line-init zle-keymap-select {
	RPS1="${${KEYMAP/vicmd/-- NOR --}/(main|viins)/-- INS --}"
	RPS2=$RPS1
	zle reset-prompt
}

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
	echo -ne '\e[5 q'
}

_fix_cursor() {
	echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)


zle -N zle-line-init
zle -N zle-keymap-select

# edit line in vim with ctrl+e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

tr() {
	mv $1 /home/skkshu/trash/
}

ma() {
	man $1 | nvim
}

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#808080'

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
