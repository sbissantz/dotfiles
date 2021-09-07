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
