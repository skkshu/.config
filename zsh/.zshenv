if [[ -z "$XDG_CONFIG_HOME" ]]
then
	export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
then
	export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi

export PATH=/home/skkshu/.gem/ruby/2.7.0/bin:$PATH

export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS="@im=fcitx5"

export EDITOR="nvim"
export VISUAL="nvim"
#export TERMINAL=""

# Path to oh-my-zsh
export ZSH="$XDG_CONFIG_HOME/zsh/.oh-my-zsh"

# export DWMBARMODULEDIR=/home/$USER/Suckless/scripts/dwmbar


# export _JAVA_AWT_WM_NONREPARENTING=1
# export AWT_TOOLKIT=MToolkitwmname LG3D

# export GTK_NATIVE_WINDOWS=true

