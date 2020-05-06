#!/bin/sh

# Verbosity and settings that you pretty much just always are going to want.
alias \
	bat="cat /sys/class/power_supply/BAT?/capacity" \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -v" \
	mkd="mkdir -pv" \
	sudo="sudo -E"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	hi="highlight --out-format=ansi"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	P="sudo pacman -S" \
	q="exit" \
	snh="sudo nvim /etc/hosts" \
	his="nvim /home/$USER/.cache/zsh/history.sh" \
	skkshu="ranger /home/$USER/Github/skkshu.github.io/" \
	hosts="sudo wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O /etc/hosts" \
	s="neofetch" \
	cs="clear && neofetch" \
	ra="ranger" \
	n="nvim" \
	lg="lazygit" \
	smci="sudo make clean install" \
	c="clear" \
	sr="sudo -E ranger" \
	jks="cd /home/$USER/skkshu.github.io && jekyll serve" \
	tl="tldr" \
	x="startx" \
	swap="ranger $XDG_CONFIG_HOME/nvim/tmp/backup" \
	gc="git clone" \
	gC="git config credential.helper store" \
	po="poweroff"
	#ssn="sudo shutdown -h now"

alias t='python /home/$USER/.tasks/t.py --task-dir ~/.tasks --list todo.txt'
# alias t='python /home/$USER/.tasks/t.py --task-dir ~/.tasks --list todo.txt --delete-if-empty'

alias \
	coz="nvim $XDG_CONFIG_HOME/zsh/.zshrc" \
	coza="nvim $XDG_CONFIG_HOME/zsh/alias.zsh" \
	cor="nvim $XDG_CONFIG_HOME/ranger/rc.conf" \
	con="nvim $XDG_CONFIG_HOME/nvim/init.vim" \
	conh="nvim $XDG_CONFIG_HOME/nvim/hi.vim" \
	conp="nvim $XDG_CONFIG_HOME/nvim/plug.vim" \

#cd
alias \
	cdn="cd $XDG_CONFIG_HOME/nvim" \
	cdc="cd $XDG_CONFIG_HOME" \
	cdz="cd $XDG_CONFIG_HOME/zsh" \
	# iu="chromium --proxy-server="http://127.0.0.1:2000" &"

#coa="nvim $XDG_CONFIG_HOME/alacritty/alacritty.yml" \
#cor="nvim $XDG_CONFIG_HOME/ranger/rc.conf" \
#coi="nvim $XDG_CONFIG_HOME/i3/config" \
#s="neofetch --ascii_distro arch" \
# his="nvim $XDG_CONFIG_HOME/zsh/.zsh_history" \
