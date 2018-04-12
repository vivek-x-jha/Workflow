################################################
# This file creates a customized shell prompt:
# 1. Includes git branch + status
# 2. Includes custom colors
################################################

# get current branch in git repo
function parse_git_branch() {
    BRANCH=$( git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' )
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=$( parse_git_dirty )
        echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    status=$( git status 2>&1 | tee )
    dirty=$( echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?" )
    untracked=$( echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?" )
    ahead=$( echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?" )
    newfile=$( echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?" )
    renamed=$( echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?" )
    deleted=$( echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?" )
    bits=''
    if [ "${renamed}" == "0" ]; then
        bits=">${bits}"
    fi
    if [ "${ahead}" == "0" ]; then
        bits="*${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
        bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
        bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
        bits="x${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
        bits="!${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
        echo " ${bits}"
    else
        echo ""
    fi
}

# Color variables
RESET='\[\e[0m\]'

BLACK='\[\e[30m\]'
BLUE='\[\e[34m\]'
CYAN='\[\e[36m\]'
GREEN='\[\e[32m\]'
MAGENTA='\[\e[35m\]'
RED='\[\e[31m\]'
YELLOW='\[\e[33m\]'
WHITE='\[\e[97m\]'

LIGHT_BLUE='\[\e[94m\]'
LIGHT_CYAN='\[\e[96m\]'
LIGHT_GRAY='\[\e[37m\]'
LIGHT_GREEN='\[\e[92m\]'
LIGHT_MAGENTA='\[\e[95m\]'
LIGHT_RED='\[\e[91m\]'
LIGHT_YELLOW='\[\e[93m\]'

DARK_GRAY='\[\e[90m\]'

# PS1 is the variable to display the prompt
PS1="${LIGHT_CYAN}\u" # username
PS1+="${WHITE}@"
PS1+="${LIGHT_BLUE}\h" # hostname
PS1+="${WHITE} | "
PS1+="${LIGHT_YELLOW}\W " # current directory
PS1+="${LIGHT_GREEN}\$( parse_git_branch )\n" # show git branch and status
PS1+="${LIGHT_GREEN}$ "
PS1+="${RESET}"

export PS1
