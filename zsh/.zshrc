#!/usr/bin/env zsh

echo "\n########################"
echo "### (Re)Loading .zshrc ###"
echo "########################\n"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/philg/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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

source "$(greadlink -m ~/.zshrc | xargs dirname)/../os-specific/mac/default-setup/fetch-configurations/configure-repos-directories.sh"

# ZSH PLUGINS
echo "Setting up plugins"

ORIGINAL_ZSH_PLUGINS_SETUP_LOCATION="/usr/local/share"
NEW_ZSH_PLUGINS_SETUP_LOCATION="/opt/homebrew/share"
ZSH_AUTO_SUGGESTIONS_SETUP_SCRIPT="zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_SYNTAX_HIGHLIGHTING_SETUP_SCRIPT="zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

if [ -f "${ORIGINAL_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_AUTO_SUGGESTIONS_SETUP_SCRIPT}" ]; then
    source "${ORIGINAL_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_AUTO_SUGGESTIONS_SETUP_SCRIPT}"
fi
if [ -f "${ORIGINAL_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_SYNTAX_HIGHLIGHTING_SETUP_SCRIPT}" ]; then
    source "${ORIGINAL_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_SYNTAX_HIGHLIGHTING_SETUP_SCRIPT}"
fi
if [ -f "${NEW_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_AUTO_SUGGESTIONS_SETUP_SCRIPT}" ]; then
    source "${NEW_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_AUTO_SUGGESTIONS_SETUP_SCRIPT}"
fi
if [ -f "${NEW_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_SYNTAX_HIGHLIGHTING_SETUP_SCRIPT}" ]; then
    source "${NEW_ZSH_PLUGINS_SETUP_LOCATION}/${ZSH_SYNTAX_HIGHLIGHTING_SETUP_SCRIPT}"
fi

# VARIABLES
# TODO: need a separate file for this
# for disabling git pager for all commands
export GIT_PAGER=cat

# VARIABLES
VARIABLES_PATH=$PERSONAL_REPOS_DIR"/software-settings/bash/.variables.bash"
if [ -f $VARIABLES_PATH ]; then
    source $VARIABLES_PATH
fi

# ALIASES
ALIASES_PATH=$PERSONAL_REPOS_DIR"/software-settings/bash/.aliases.bash"
if [ -f $ALIASES_PATH ]; then
    source $ALIASES_PATH
fi

# FUNCTIONS
FUNCTIONS_PATH=$PERSONAL_REPOS_DIR"/software-settings/bash/.functions.bash"
if [ -f $FUNCTIONS_PATH ]; then
    source $FUNCTIONS_PATH
fi

# DEVICE SPECIFIC
DEVICE_SPECIFIC_SCRIPTS_PATH=~/.device-specific-scripts.bash
if [ ! -f $DEVICE_SPECIFIC_SCRIPTS_PATH ]; then
    touch $DEVICE_SPECIFIC_SCRIPTS_PATH
else
    source $DEVICE_SPECIFIC_SCRIPTS_PATH
fi

# TOOLS, E.G. NVM, GCLOUD
TOOLS_SETUP_DIR_PATH=$PERSONAL_REPOS_DIR"/software-settings/bash/tools-setup"
if [ -f "${TOOLS_SETUP_DIR_PATH}/.google-cloud-sdk.bash" ]; then
    source "${TOOLS_SETUP_DIR_PATH}/.google-cloud-sdk.bash"
fi
if [ -f "${TOOLS_SETUP_DIR_PATH}/.nvm.bash" ]; then
    source "${TOOLS_SETUP_DIR_PATH}/.nvm.bash"
fi
if [ -f "${TOOLS_SETUP_DIR_PATH}/.sdkman.sh" ]; then
    source "${TOOLS_SETUP_DIR_PATH}/.sdkman.sh"
fi

echo "\nFinished (re)loading .zshrc\n"