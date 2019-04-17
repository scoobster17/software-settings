echo "\n########################"
echo "### Reloading .zshrc ###"
echo "########################\n"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/philg/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git) # nvm npm osx kubectl docker jira

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

echo "Setting up variables for .zshrc"
export PROJECTS_DIR=$HOME"/Documents/projects/work"
echo "Projects directory set to: "$PROJECTS_DIR
export EDITOR="subl"        # temporary

# ZSH PLUGINS
echo "Setting up plugins"
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Google Cloud
echo "Setting up Google Cloud SDK"
[[ ":$PATH:" != *":$HOME/Documents/tools/google-cloud-sdk/bin:"* ]] && PATH="$HOME/Documents/tools/google-cloud-sdk/bin:${PATH}" # only adds to path if not there already

# NVM - This section is apparently not needed when nvm listed in plugins, but doesn't work for me yet
echo "Setting up NVM"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# CUSTOM ALIASES
echo "Setting custom aliases"
alias subl="~/bin/subl"
alias rz="source ~/.zshrc"
alias pro="cd $PROJECTS_DIR && la"
alias ozr="$EDITOR ~/.zshrc"
alias rnm="rm -rf ./node_modules"
alias ong="subl ~/.ngrok2/ngrok.yml"
alias onx="subl /usr/local/etc/nginx/nginx.conf"
alias obp="subl ~/.bash_profile"
alias obr="subl ~/.bashrc"
alias obl="subl ~/.bashlocal"

# CUSTOM FUNCTIONS
echo "Setting up custom functions"
oke () {
  cd $PROJECTS_DIR
  cd backend/tools
  sleep 3 && open http://localhost:8800 &
  bin/kube editor
}

ip () {
    case "$OS" in
        WINDOWS)
            ipconfig
            ;;
        MAC)
            ifconfig | grep "inet " |  grep -v 127.0.0.1
            ;;
        *)
            echo "OS NOT RECOGNISED"
            ;;
    esac
}

sha () {
  echo "\nAvailable custom aliases:\n-------------------------\n"
  echo "  'subl' - Open sublime text"
  echo "  'rz' - Reload zsh(rc)"
  echo "  'pro' - Change directory to projects directory and list projects"
  echo "  'ozr' - Open .zshrc configuration file"
  echo "  'rnm' - Remove node_modules folder in the current directory (rm -rf)"
  echo "  'ong' - Open ngrok configuration file"
  echo "  'onx' - Open nginx configuration file"

  echo "\nAvailable custom functions:\n-------------------------\n"
  echo "  'oke' - Open splyt's kubernetes editor (backend/tools)"
  echo "  'ip' - Reveal ip address"
  echo "  'sha' - Print available custom aliases/functions for reference"
}

echo "\nFinished reloading .zshrc\n"
