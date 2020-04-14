HISTSIZE=20000
SAVEHIST=20000
# HISTFILE=$XDG_CONFIG_HOME/zsh/.zsh_history
HISTFILE=/home/$USER/.cache/zsh/.zsh_history

export http_proxy="http://127.0.0.1:2000"
export https_proxy="http://127.0.0.1:2000"

#export http_proxy="http://127.0.0.1:1099"
#export https_proxy="http://127.0.0.1:1099"
#-----------------------------------------#
#export http_proxy="http://127.0.0.1:1081"
#export https_proxy="http://127.0.0.1:1081"
#------------------------------------------#
#export http_proxy="http://127.0.0.1:12333"
#export https_proxy="http://127.0.0.1:12333"

export RANGER_LOAD_DEFAULT_RC=FALSE

export ZSH_DISABLE_COMPFIX=true

# ZSH_THEME="robbyrussell"
#ZSH_THEME="muse"
ZSH_THEME="ys"
# ZSH_THEME="random"
# ZSH_THEME="<++>"
# ZSH_THEME="<++>"
# ZSH_THEME="awesomepanda"
# ZSH_THEME="wedisagree"


# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# use case-sensitive completion
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off.
# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh #if I put this line after vi mode, or do not have this line, the shell will say: `/path/to/.zshrc:bindkey:157: no such keymap `menuselect``


_comp_options+=(globdots)  # Include hidden files


# User configuration

#export MANPATH=""
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source $XDG_CONFIG_HOME/zsh/aliasrc

#Zsh vi mode
bindkey -v
bindkey -M vicmd "k" vi-insert
bindkey -M vicmd "K" vi-insert-bol
bindkey -M vicmd "n" vi-backward-char
bindkey -M vicmd "i" vi-forward-char
bindkey -M vicmd "N" vi-beginning-of-line
bindkey -M vicmd "I" vi-end-of-line
bindkey -M vicmd "e" down-line-or-history
bindkey -M vicmd "u" up-line-or-history
bindkey -M vicmd "l" undo
#bindkey -M vicmd "-" vi-rev-repeat-search
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

KEYTIMEOUT=1

tr() {
	mv $1 /home/skkshu/trash/
}

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ff00ff,bg=cyan,bold,underline'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#808080'

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
