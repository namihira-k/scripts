# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
GOPATH=/usr/golang
export GOPATH
PATH=$PATH:$HOME/bin:$GOPATH
export PATH
