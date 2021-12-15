# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Bash aliases
# Note: call before bash_completion
#
if [ -f $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# Bash completion (if available)
# 
if [ -f $HOME/.bash_completion/bash_completion ]; then 
    . $HOME/.bash_completion/bash_completion
else
	echo "Steven, '~/.bash-completion/bash_completion' is missing"
fi

# Dotfile management with 'gitconf'
# https://wiki.archlinux.org/index.php/Dotfiles
#

if [ -f $HOME/.bash_completion/complete_alias ]; then
	. $HOME/.bash_completion/complete_alias
	alias gitc='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
	complete -F config _complete_alias
else
	echo "Steven, '~/.bash_completion/complete_alias' is missing"
fi

# Export
#

# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
export PROMPT_COMMAND='history -a'

# Shopt
# https://ss64.com/bash/shopt.html
#

# automatically correct mistyped directory names on cd
shopt -s cdspell
# Include  dotfiles in the results of filename expansion
shopt -s dotglob
# Aliases are expanded
shopt -s expand_aliases
# Enable extended pattern matching features described above 
shopt -s extglob
# Matches filenames in a case-insensitive
shopt -s nocaseglob
# Don't overwrite, append commands to ~/.bash_history
shopt -s histappend
