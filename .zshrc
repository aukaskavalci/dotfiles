# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(
  git
  zsh-syntax-highlighting
  zsh-completions
  gcloud
  docker
  helm
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# Powerline
# . /Users/kaskavalci/Library/Python/3.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

# Customizing `context` colors for root and non-root users
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="cyan"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"

POWERLEVEL9K_MODE='awesome-fontconfig'

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_FOREGROUND='white'
POWERLEVEL9K_VCS_DARK_FOREGROUND='black'
POWERLEVEL9K_VCS_BACKGROUND='green'

# If VCS changes are detected:
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='cyan'

#dir colors

# If VCS changes are detected:
POWERLEVEL9K_DIR_FOREGROUND='black'
POWERLEVEL9K_DIR_BACKGROUND='white'

#prefixes
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=">"

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="white"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_STATUS_OK_BACKGROUND="green"
POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

# color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#aliases
alias python='python3'
alias p='pass -c'
alias vi='vim'
alias ll='ls -alGh'
alias l='ls -lGh'
alias lld='ll -d */'
alias k='kubectl'
alias kc='kubecolor'
alias flushdns='sudo dscacheutil -flushcache'
alias di="docker images --format '{{.Repository}}:{{.Tag}}' | grep \"$1\""
alias mklog='vim $(date '+%Y-%m-%d').md'
alias cyberlogs="log stream --predicate '(subsystem == \"ch.sudo.cyberduck\") && (category == \"transcript\")' --level info"
alias cors-free-chrome='mkdir /tmp/test & open -a Google\ Chrome --args --disable-web-security --user-data-dir /tmp/test'

#vars
export EDITOR='vim'

function lb() {
    today=$(date '+%Y-%m-%d')
    vim ~/logbook/$today.md
    markdown-pdf ~/logbook/$today.md -o /Volumes/GoogleDrive/My\ Drive/logbook/$today.pdf
}

export GOPATH=~/workspace/gow
export CDPATH=.:$GOPATH/src/github.com:$GOPATH/src/golang.org:$GOPATH/src:~/workspace

# keys
source ~/.private/keys

# Bring some light to dull stdout
 [[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.zsh
