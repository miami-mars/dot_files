# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jorge_perezjr/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="theunraveler"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#OPTIONS
# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD
setopt appendhistory

#The more history you know, the better you can predict the future
HISTFILE='~/.zsh_history'
HISTSIZE=1000000000
SAVEHIST=1000000000

# ALIAS
# Random Aliases
alias ec='exercism'
alias cdd='cd ~/Development'
alias sshr='ssh-keygen -t rsa -b 4096 -C "me@juniorjorge.com"'
alias ssheval='eval $(ssh-agent -s)'
alias sz='source ~/.zshrc'
alias vzrc='vim ~/.zshrc'
alias vetch='sudo vim /etc/hosts'

# Because sometimes, it feels good. Yes the space is necessary.
alias fucking='sudo '

# List Aliases
alias la='ls -Nal --color --group-directories-first'
alias ll='ls -Nl --color --group-directories-first'

# Git Aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --decorate'
alias gm='git merge'
alias gp='git push'
alias gpsu='git push --set-upstream origin'
alias grH='git reset'
alias grpo='git remote prune origin'
alias gs='git status'
alias gsh='git show --pretty'
alias gst='git stash'

# Python Aliases
alias p='python'
alias pmp='python -m pytest'
alias mkvenv='mkvirtualenv -p /usr/local/bin/python3'
alias upgrade_pip='pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs pip install -U'

# Django Aliases
alias pm='python manage.py'
alias pmr='python manage.py runserver'
alias pmm='python manage.py migrate'
alias pmmm='python manage.py makemigrations'

# Link Alias - Typically a one time thing

alias lnv='ln -s ~/Code/.dotfiles/.vimrc ~/.vimrc'
alias lnz='ln -s ~/Code/.dotfiles/.zshrc ~/.zshrc'

# For using Python Virtual Environments
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
# export WORKON_HOME=~/Dev/envs
# source /usr/local/bin/virtualenvwrapper.sh

# OPTIONS
# eval "$(docker-machine env default)"


#PATHS
# If you come from bash, you may have to change your $PATH
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export GPG_TTY=$(tty)
# export WORKON_HOME=~/Dev/envs
# PATH=~/.composer/vendor/bin:$PATH
# export NVM_DIR=~/.nvm
# . $(brew --prefix nvm)/nvm.sh

#Trash a file instead of remove
function trash() {
        mv $1 "~/.local/share/Trash/files"
}

#OS X
alias bu='brew upgrade'
alias xcode_8='sudo xcode-select -s /Applications/Xcode8.3.3.app/Contents/Developer'
alias xcode_9='sudo xcode-select -s /Applications/Xcode.app/Contents/Developer'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jorge_perezjr/google-cloud-sdk/path.zsh.inc' ]; then . '/home/jorge_perezjr/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jorge_perezjr/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/jorge_perezjr/google-cloud-sdk/completion.zsh.inc'; fi
