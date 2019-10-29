# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# path to Rust and Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/anna/.oh-my-zsh"

# sets shell
export SHELL=/usr/bin/zsh

export PATH=/usr/local/Cellar/ruby/2.6.1/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/11/bin
export PATH="$PATH:$HOME/.rvm/bin"  # adds rvm to path for scripting - not sure if needed
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NODE_PATH=$NODE_PATH:$HOME/.npm-global/lib/node_modules

# Prefer Homebrew Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

############ POWERLEVEL THEME SETTINGS ##############
POWERLEVEL9K_MODE='awesome-fontconfig'

# Set the segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(disk_usage time) 

# Customise prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true     # UNCOMMENT THOSE TO USE RULER:
POWERLEVEL9K_SHOW_RULER=                #true
POWERLEVEL9K_RULER_CHAR=                #'─'
POWERLEVEL9K_RULER_BACKGROUND=
POWERLEVEL9K_RULER_FOREGROUND=

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
local p='%F{%(?.023.197)}${${${KEYMAP:-0}:#vicmd}:+❯}${${$((!${#${KEYMAP:-0}:#vicmd})):#0}:+❮}%f '
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$p"

# Set segment separators
POWERLEVEL9K_LEFT_SEGMENT_END_SYMBOL=$'\uE0B1'
POWERLEVEL9K_LEFT_SEGMENT_SYMBOL=$'\uE0B1'
POWERLEVEL9K_LEFT_SUBSEGMENT_SYMBOL=$'\uE0B1'
POWERLEVEL9K_RIGHT_SEGMENT_END_SYMBOL=$'\uE0B3'
POWERLEVEL9K_RIGHT_SEGMENT_SYMBOL=$'\uE0B3'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SYMBOL=$'\uE0B3'
POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=' '

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY= #"truncate_middle"

POWERLEVEL9K_DIR_SHOW_WRITABLE=true

######                  *** DARK THEME COMMENCES ***

###### RIGHT PROMPT STYLES ######

# Set right context segment colors
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='234' 
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='234' 
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND='234' 
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='234' 
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='234' 
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='024'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='024'
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND='024'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='024'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND='024'

# Set dir_writable styles:
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='220'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='124'
POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_COLOR='220'
POWERLEVEL9K_LOCK_ICON=$'\uf023'

# Set right dir segment colors: 
POWERLEVEL9K_DIR_HOME_BACKGROUND='243' 
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='243'
POWERLEVEL9K_DIR_ETC_BACKGROUND='243'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='243'
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND='243'
POWERLEVEL9K_DIR_HOME_FOREGROUND='234' 
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='234' 
POWERLEVEL9K_DIR_ETC_FOREGROUND='234' 
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='234' 
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND='234'

# Set the vcs right segment icons:
POWERLEVEL9K_VCS_GIT_ICON=$'\uF113 '
# POWERLEVEL9K_VCS_GIT_ICON='%fon %F{040}\uf1d3 ' 
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='%fon %F{234}\uf09b ' 
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='%fon %F{234}\uf171 '
POWERLEVEL9K_VCS_GIT_GIT_GITLAB_ICON='%fon %F{234}\uf296 '
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'%{\b?%}' 
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'%{\b!%}'
POWERLEVEL9K_VCS_STAGED_ICON=$'%{\b+%}'

# Set the right vcs segment colors:
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='023'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='180'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='131'
POWERLEVEL9K_VCS_LOADING_BACKGROUND='249'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='234' 
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='234' 
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='234' 
POWERLEVEL9K_VCS_LOADING_FOREGROUND='252'

###### LEFT PROMPT STYLES ###### 

# Set disk usage segment colors:
POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND='138'
POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND='234'
POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND='178'
POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND='234'
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND='167' 
POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND='231'

# Set left time segment setup:
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_TIME_BACKGROUND='243'
POWERLEVEL9K_TIME_FOREGROUND='234'

# Icons:
POWERLEVEL9K_NODE_ICON='%fvia %F{234}⬢'
POWERLEVEL9K_PYTHON_ICON="\uE842 "

######                  *** DARK THEME ENDS ***

######                  *** LIGHT THEME COMMENCES ***
###### uncomment to use the light theme & comment out the dark theme - function tba

##### RIGHT PROMPT STYLES ######

# # Set right context segment colors
# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='224'  
# POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='224' 
# POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND='224' 
# POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='224' 
# POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='224' 
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='030' 
# POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='030'
# POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND='030'
# POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='030'
# POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND='030'

# # Set dir_writable styles:
# POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='220'
# POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='124'
# POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_COLOR='220'
# POWERLEVEL9K_LOCK_ICON=$'\uf023'

# # Set right dir segment colors: 
# POWERLEVEL9K_DIR_HOME_BACKGROUND='243' 
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='243'
# POWERLEVEL9K_DIR_ETC_BACKGROUND='243'
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='243'
# POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND='243'
# POWERLEVEL9K_DIR_HOME_FOREGROUND='224' 
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='224' 
# POWERLEVEL9K_DIR_ETC_FOREGROUND='224'
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='224' 
# POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND='224'

# # Set the vcs right segment icons:
# POWERLEVEL9K_VCS_GIT_ICON=$'\uF113 '
# # POWERLEVEL9K_VCS_GIT_ICON='%fon %F{040}\uf1d3 ' 
# # POWERLEVEL9K_VCS_GIT_GITHUB_ICON='%fon %F{234}\uf09b ' 
# POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='%fon %F{234}\uf171 '
# POWERLEVEL9K_VCS_GIT_GIT_GITLAB_ICON='%fon %F{234}\uf296 '
# POWERLEVEL9K_VCS_UNTRACKED_ICON=$'%{\b?%}' 
# POWERLEVEL9K_VCS_UNSTAGED_ICON=$'%{\b!%}'
# POWERLEVEL9K_VCS_STAGED_ICON=$'%{\b+%}'

# # Set the right vcs segment colors:
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='214'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='092'
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='208' 
# POWERLEVEL9K_VCS_LOADING_BACKGROUND='196'
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='224' 
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='224' 
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='224' 
# POWERLEVEL9K_VCS_LOADING_FOREGROUND='224'

##### LEFT PROMPT STYLES ###### 

# # Set disk usage segment colors:
# POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND='248'
# POWERLEVEL9K_DISK_USAGE_NORMAL_FOREGROUND='224'
# POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND='248'
# POWERLEVEL9K_DISK_USAGE_WARNING_FOREGROUND='224'
# POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND='160'  
# POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND='124'

# # Set left time segment setup:
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
# POWERLEVEL9K_TIME_BACKGROUND='243'
# POWERLEVEL9K_TIME_FOREGROUND='224'

# # Icons:
# POWERLEVEL9K_NODE_ICON='%fvia %F{224}⬢'
# POWERLEVEL9K_PYTHON_ICON="\uE842 "

######                  *** LIGHT THEME ENDS ***

############ END- POWERLEVEL THEME SETTINGS ##############

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# disable marking untracked files under VCS as dirty. 
# makes repository status check for large repositories faster
DISABLE_UNTRACKED_FILES_DIRTY="true"

# plugins to be loaded
plugins=(zsh-autosuggestions git docker docker-compose autojump zsh-syntax-highlighting dnf npm)

source $ZSH/oh-my-zsh.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# aliases:
alias ls='ls -l'
alias gs='git status'
alias gr='git remote -v'
alias cl="clear"
alias commit="git commit -m"
alias all="git add --all"
alias gpl="git pull"
alias python="python3"
alias refresh='source ~/.zshrc'

## Updating

# Get updates for OS X Software, Homebrew, NPM, Heroku, Pip, and all
# packages/gems
# I stole this from https://github.com/ericwbailey/dotfiles/blob/master/.aliases
alias updatesoftware="softwareupdate -i -a && mas upgrade"
alias updatehomebrew="brew upgrade && brew cleanup"
alias updatenpm="npm install npm -g && npm update -g"
alias updateruby="gem update --system && gem update"
alias updateheroku="brew upgrade heroku && heroku update"
alias updatepip="pip3 install --upgrade pip"
# alias updatemackup="mackup backup"
alias updatetldr="tldr --update"
alias update="updatesoftware; updatehomebrew; updatenpm; updateruby; updateheroku; updatepip; updatetldr"

# The Fuck
eval $(thefuck --alias fuck)