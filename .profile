# 
#  ~/.profile 
#
# Note: For things that are not specifically related to Bash, like environment
# variables PATH and friends, and should be available anytime.  For example,
# .profile should also be loaded when starting a graphical desktop session.
# 

# Note: Expand the default path with '$PATH:' do not overwrite it!


# Gnome Keyring
#
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

