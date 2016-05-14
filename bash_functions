# Some bash functions

function notify() {
    local result=$([ $? = 0 ] && echo terminal || echo error)
    local command=$(history | tail -n1 | sed -e 's/^\s*[0-9]\+\s*//;s/[;&|]\s*notify$//')
    notify-send --urgency=low -i "$result" "$command"
}

# http://www.jayway.com/2012/11/27/configure-git-like-a-boss/
# `g` is a shortcut for git, it defaults to `git s` (status) if no argument is given.
function g() {
    local cmd=${1-s}
    shift
    git $cmd $@
}

