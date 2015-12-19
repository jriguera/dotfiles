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

if [ -d "$HOME/.rvm" ] ; then
    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

    # Add RVM to PATH for scripting
    export PATH="$PATH:$HOME/.rvm/bin"
fi

# Load git-prompt
if [ -r "$HOME/.git-prompt.sh" ] ; then
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWCOLORHINTS=1
    export GIT_PS1_DESCRIBE_STYLE="branch"
    export GIT_PS1_SHOWUPSTREAM="auto git verbose"
    export GIT_PS1_STATESEPARATOR=" "

    source "$HOME/.git-prompt.sh"
fi

# Load virtualenvwrapper
# pip install --upgrade virtualenv virtualenvwrapper
if [ -r /usr/local/bin/virtualenvwrapper.sh ] ; then
    export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/devel/venvs

    source /usr/local/bin/virtualenvwrapper.sh
fi

# Load autoenv
# https://github.com/kennethreitz/autoenv
# pip install autoenv
if [ -r /usr/local/bin/activate.sh ] ; then
    source /usr/local/bin/activate.sh
fi

export DEBEMAIL="jriguera@gmail.com"
export DEBFULLNAME="Jose Riguera"

export EDITOR=vim

if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
else 
    export BROWSER=links
fi

# enable byobu
if [ -r /usr/bin/byobu-launch ] ; then
    _byobu_sourced=1 . /usr/bin/byobu-launch
fi
