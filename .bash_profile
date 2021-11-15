# .bash_profile

# Make sure ~/.profile is loaded
#
if [ -f $HOME/.profile ]; then
	. $HOME/.profile 
else
	echo "Steven, ~/.profile is missing"
	sleep 2
fi

# Make sure ~/.bashrc is loaded
#
if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc 
else
	echo "Steven, ~/.bashrc is missing"
	sleep 2
fi
# User specific environment and startup programs

# Environment variables
#

# Editors
#
export EDITOR="nvim"
export ALTERNATE_EDITOR="vi"

# Browser
#
export BROWSER=/usr/bin/firefox

# LaTex
#
export PATH=$PATH:/opt/texlive/2021/bin/x86_64-linux
export MANPATH=$MANPATH:/opt/texlive/2021/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/opt/texlive/2021/texmf-dist/doc/info

# R
#
export R_ENVIRON_USER=$HOME/.R/Renviron
# export RSTUDIO_WHICH_R=/usr/bin/R-devel

# Additional
#
export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here

# My environment variables
#

# Visit nvim init file
#
VINIT=~/.config/nvim/init.vim ; export VINIT
