# colors!
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"
yellow="\[\033[0;33m\]" 

# ---------------------
# Udacity example
# ---------------------

# Enable tab completion
source ~/.udacity-terminal-config/git-completion.bash

# Change command prompt
source ~/.udacity-terminal-config/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$yellow \W
$ $reset"


# -----------------------
# Dependency free example
# -----------------------
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# use one or the other... not both
export PS1="$red\u$green\$(parse_git_branch)$yellow \W
$ $reset"

# Tab completion ... use this one or the other! not both.
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

