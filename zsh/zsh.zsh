HISTSIZE=20000
SAVEHIST=20000
HISTFILE=/home/$USER/.cache/zsh/history.sh

export ZSH_DISABLE_COMPFIX=true

CASE_SENSITIVE="false" # case-sensitive completion, set `off` to use the following
HYPHEN_INSENSITIVE="true" # _ and - will be interchangeable.

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# see 'man strftime' for details.
HIST_STAMPS="yyyy/mm/dd/"

export RANGER_LOAD_DEFAULT_RC=FALSE

# Basic auto/tab complete:
# autoload -U compinit
# zstyle ':completion:*' menu select
# zmodload zsh/complist
# compinit
_comp_options+=(globdots)  # Include hidden files

# edit line in vim with ctrl+e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

woman() {
	man $1 | nvim
}
