# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls -G -F"
alias la="ls -a"
alias ll="ls -l"

alias tomcatstart="sudo /etc/init.d/tomcat start"
alias tomcatstop="sudo /etc/init.d/tomcat stop"
alias tomcatlog="tailf /usr/java/tomcat/default/logs/catalina.out"
