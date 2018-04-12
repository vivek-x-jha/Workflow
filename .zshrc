. `brew --prefix`/etc/profile.d/z.sh

export PATH=$HOME/bin:$HOME/anaconda3/bin:$HOME/anaconda2/bin:$PATH

export ZSH=/Users/vivekjha/.oh-my-zsh

export EDITOR=vim

source ~/.fonts/*.sh

export TERM=screen-256color

echo -e "\033]6;1;bg;red;brightness;45\a"
echo -e "\033]6;1;bg;green;brightness;47\a"
echo -e "\033]6;1;bg;blue;brightness;48\a"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"

# POWERLEVEL9K_IP_INTERFACE='en0'
# POWERLEVEL9K_PUBLIC_IP_HOST='http://ident.me'

# zsh tmux settings
# ZSH_TMUX_AUTOSTART='true'

## Powerlevel9k Settings
POWERLEVEL9K_HISTORY_BACKGROUND='green'

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{red} \Uf1d0 %f %F{yellow
}❯ "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history)

# # Refresh Function - https://babushk.in/posts/renew-environment-tmux.html
# if [ -n "$TMUX" ]; then
#   function refresh {
#     export $(tmux show-environment | grep "^SSH_AUTH_SOCK")
#     export $(tmux show-environment | grep "^DISPLAY")
#   }
# else
#   function refresh { }
# fi

# # Then, I define a preexec hook that calls refresh before each new command that gets executed:
# function preexec {
#     refresh
# }

# POWERLEVEL9K_TIME_FORMAT="%D{%T | %m.%d.%y}"
##

DEFAULT_USER="vivekjha"

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

export UPDATE_ZSH_DAYS=7

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(sudo git osx history taskwarrior tmux tmuxinator common-aliases extract colored-man-pages colorize copydir my-aliases marked2 zsh-autosuggestions)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Powerline
# if [ -d "$HOME/Library/Python/2.7/bin" ]; then
#    PATH="$HOME/Library/Python/2.7/bin:$PATH"
# fi

# repository_root="$HOME/Library/Python/2.7/lib/python/site-packages"
# . $repository_root/powerline/bindings/zsh/powerline.zsh
