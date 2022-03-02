# rm 
#
alias rm='rm -iv'
alias rmdir='rmdir -v'

# (Colored) ls
#
alias l='ls -F --color=auto'
alias ls='ls -F'
alias ll='ls -lhF --color=auto'
alias la='ls -alhF --color=auto'

# cd
#
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

# Grep in color
#
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Copy files
#
alias cp='cp -via'

# clear
#
alias c='clear'

# Print wd
#
alias p='pwd'

# mv
#
alias mv='mv -vi'

# chmod
#
alias chmod='chmod -v'

# tar
#
alias untar='tar -zxvf'
alias tarit='tar -zcvf'

# wget 
#
alias wget='wget -c '


# R
#
alias R="R --quiet"
alias R-devel="R-devel --quiet"

# IP
#

# external ip
alias ipe='curl ipinfo.io/ip'

# local ip
alias ipi='ipconfig getifaddr en0'

# ping
#
alias ping='ping -c 5'

# ranger
#
alias r="ranger"

# Git
# (see: ,gitconfig)
alias g="git"
