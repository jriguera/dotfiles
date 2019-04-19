# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$PATH:$HOME/bin"
fi

# For git-prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"
export GIT_PS1_SHOWUPSTREAM="auto git verbose"
export GIT_PS1_STATESEPARATOR=" "

# For python virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/devel/venvs

export DEBEMAIL="jriguera@gmail.com"
export DEBFULLNAME="Jose Riguera"
export EDITOR=vim
[ -n "$DISPLAY" ] && export BROWSER=firefox || export BROWSER=links

# enable byobu
if [ -r /usr/bin/byobu-launch ] ; then
    _byobu_sourced=1 . /usr/bin/byobu-launch
fi

# Go
export GOROOT=/usr/local/go
export GOPATH=$HOME/devel/golang
export PATH=$GOROOT/bin:$PATH
