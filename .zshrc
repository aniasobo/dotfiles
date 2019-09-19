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
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(disk_usage time root_indicator) 

# Customise prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true     # UNCOMMENT THOSE TO USE RULER:
POWERLEVEL9K_SHOW_RULER=                #true
POWERLEVEL9K_RULER_CHAR=                #'─'
POWERLEVEL9K_RULER_BACKGROUND=none
POWERLEVEL9K_RULER_FOREGROUND=237

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
local p='%F{%(?.078.138)}${${${KEYMAP:-0}:#vicmd}:+❯}${${$((!${#${KEYMAP:-0}:#vicmd})):#0}:+❮}%f '
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

###### RIGHT PROMPT STYLES ######

# Set right context segment colors
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='234' #'007'
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='234' #'007'
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND='234' #'007'
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='234' #'007'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='234' #'007'
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
POWERLEVEL9K_DIR_HOME_BACKGROUND='245' #'138'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='245'
POWERLEVEL9K_DIR_ETC_BACKGROUND='245'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='245'
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND='245'
POWERLEVEL9K_DIR_HOME_FOREGROUND='234' #'150' pale green
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='234' #'150'
POWERLEVEL9K_DIR_ETC_FOREGROUND='234' #'150'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='234' #'150'
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND='234'

# Set the vcs right segment icons:
POWERLEVEL9K_VCS_GIT_ICON=$'\uF113 '
# POWERLEVEL9K_VCS_GIT_ICON='%fon %F{040}\uf1d3 ' 
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='%fon %F{234}\uf09b ' # 040
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
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND='167'  #'197' 
POWERLEVEL9K_DISK_USAGE_CRITICAL_FOREGROUND='231'

# Set left time segment colors:
POWERLEVEL9K_TIME_BACKGROUND='246'
POWERLEVEL9K_TIME_FOREGROUND='234'

# Icons:
POWERLEVEL9K_NODE_ICON='%fvia %F{033}⬢'
POWERLEVEL9K_PYTHON_ICON="\uE842 "

############ END- POWERLEVEL THEME SETTINGS ##############

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# uncomment this for crazy autosuggestion highlight:
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions git docker docker-compose autojump zsh-syntax-highlighting dnf npm)

source $ZSH/oh-my-zsh.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# aliases:
alias ls='ls -l'
alias gs='git status'
alias gr='git remote -v'
alias cl="clear"
alias commit="git commit -m"
alias all="git add --all"
alias gpl="git pull"
alias python="python3"export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
alias refresh='source ~/.zshrc'
