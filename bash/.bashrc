################################################################################

### BASH RC ###

# Changes require the following command to be run unless the terminal is closed:
# "source ~/.bash_profile" or "rb" using alias below

# This file assumes a bash session is running this code; tested in iTerm2 (OSX)
# and Git Bash via ConEmu Portable (Windows 10)

echo -e "Reloading .bashrc\n"

################################################################################

## DEFAULT SETTINGS

# SET DEFAULT EDITOR
# relies on https://www.sublimetext.com/docs/2/osx_command_line.html
# ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
# export EDITOR=~/bin/subl

# SAVE BASH HISTORY FOR ALL TERMINALS IN REAL TIME
# http://web.archive.org/web/20090815205011/http://www.cuberick.com/2008/11/update-bash-history-in-realtime.html
# Tells bash to append to the history instead of completely overwriting
shopt -s histappend
# calls history -a every time the prompt is shown, appending the last command to
# the history file
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
# allow the bash history file size to be changed to keep a certain amount of history
# To make unlimited, just =, no value
HISTSIZE=10000
HISTFILESIZE=10000

################################################################################

## COLOURS

# CHANGE THE DEFAULT COLOUR OF PROMPT TO GREEN (AND CHANGES FORMAT)
# http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html
# \e[0m indicates format text reset
#PS1='[\u@\h \W]\$ '  # Default with format (\u @ \h \W); user@host path
#PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '       # RED (\e[1;31m)
PS1='\n\[\e[1;32m\]Dir: .../\W/  User: \u  Last Cmd: \t\n\$\[\e[0m\] '      # GREEN (\e[1;32m)
# TO BE IMPROVED WITH PROMPT_COMMAND AND/OR PREEXEC http://superuser.com/questions/175799/does-bash-have-a-hook-that-is-run-before-executing-a-command

# ACTIVATE COLOURS IN TERMINAL
export CLICOLOR=1

# CONFIGURE COLOURS IN TERMINAL
#
# In pairs, the colours relate to text color (T) and background colour (B) for
# each (TB x 11 = 22 char string)
#   01. directory
#   02. symbolic link – special kind of file that contains a reference to another file or directory.
#   03. socket – special kind of file used for inter-process communication.
#   04. pipe – special file that connects the output of one process to the input of another.
#   05. executable
#   06. block special – a kind of device file.
#   07. character special – a kind of device file.
#   08. executable with setuid bit set (setuid is a short for set user ID upon execution).
#   09. executable with setgid bit set (setgid is a short for set group ID upon execution).
#   10. directory writable to others, with sticky bit – only the owner can rename or delete files.
#   11. directory writable to others, without sticky bit – any user with write and execution permissions can rename or delete files.
#
# And the different letters correspond to:
#   a black
#   b red
#   c green
#   d brown
#   e blue
#   f magenta
#   g cyan
#   h light grey
#   x default color
#
# export LSCOLORS=exfxcxdxbxegedabagacad  # Default once colours activated
export LSCOLORS=GxFxCxDxBxegedabagaced

################################################################################

## VARIABLES

# OPERATING SYSTEM
# sourced from (and since modified):
# http://stackoverflow.com/questions/394230/detect-the-os-from-a-bash-script
case "$OSTYPE" in
    msys*)      OS="WINDOWS" ;;         # Windows 10 only?
    darwin*)    OS="MAC" ;;
    linux*)     OS="LINUX" ;;
    bsd*)       OS="BSD" ;;
    *)          OS="UNKNOWN: $OSTYPE" ;;
esac
echo -e "OS: "$OS"\n";

# SET DIRECTORIES TO BE STORED
CURRENT_DIR=$PWD;
USER_BIN="bin";

# SET EDITOR DIRECTORY
case "$OS" in
    WINDOWS)
        EDITOR_DIR="$HOME/Dropbox/Programs/Sublime Text Build 3083 x64"
        EDITOR_FILE="subl.exe"
        ;;
    MAC)
        EDITOR_DIR="/Applications/Sublime Text 2.app"
        EDITOR_FILE="Contents/SharedSupport/bin/subl"
        ;;
    *)
        EDITOR_DIR=""
        EDITOR_FILE=""
        echo "OS NOT RECOGNISED: CONFIG INCOMPLETE"
        ;;
esac

# Repository name for this project (directory used for aliases)
REPO_NAME="software-settings"

# CHECK IF NOW REDUNDANT WITH WORKING SOLUTION FOR WINDOWS SYMLINK
# cd "$HOME"                              # Same as ~
# if [ ! -d "$USER_BIN" ]; then
#     echo '~/bin does not exist'
#     mkdir "$USER_BIN";
#     cd "$USER_BIN" && mkdir subl
# else
#     cd "$USER_BIN";
#     if [ ! -d "subl" ]; then
#         mkdir "subl"
#     fi
# fi
# cd $CURRENT_DIR;

# Symlink configuration
EDITOR_SYM_LINK_NAME="subl"         # Symlink destination folder name

# Symlink destination
EDITOR_SYM_LINK_DEST="$HOME/$USER_BIN/$EDITOR_SYM_LINK_NAME"

MYEDITOR=EDITOR_SYM_LINK_NAME           # Symlink alias to my editor

################################################################################
##### SYMBOLIC LINKS
################################################################################

# Sublime Text (3) ------------- TO TEST -----------------
# ----------- may need to check if symlink already exists ---------
# case "$OS" in
#     MAC)
#         ln -s "$EDITOR_DIR/$EDITOR_FILE" "$EDITOR_SYM_LINK_DEST"
#         ;;
#     *)
#         echo "NO SYMLINKS CREATED"
#         ;;
# esac

################################################################################
##### BASH ALIASES #############################################################
################################################################################

#-- TRAVERSING & FILE/FOLDER OPERATIONS --#

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias la="ls -la"

#-- BASH --#

alias rb="source ~/.bash_profile"       # Reload bash profile
alias obp=$MYEDITOR" ~/.bash_profile"   # Open .bash_profile
alias obr=$MYEDITOR" ~/.bashrc"         # Open .bashrc
alias obl=$MYEDITOR" ~/.bashlocal"      # Open .bashlocal
alias obh=$MYEDITOR" ~/.bash_history"   # Open bash history

if [ -n PROJECTS_DIR ]; then
    alias cbp="echo \"copying repo/.../.bash_profile\" && cp "$PROJECTS_DIR"/"$REPO_NAME"/bash/.bash_profile ~ && rb"   # copy repo .bash_profile
    alias cbr="echo \"copying repo/.../.bashrc\" && cp "$PROJECTS_DIR"/"$REPO_NAME"/bash/.bashrc ~ && rb"               # copy repo .bashrc
fi

#-- NPM --#
alias gnm="npm ls -g --depth 0"         # List npm modules installed globally
alias gnp="gnm"
alias npmgm="gnm"
alias npmgp="gnm"

#-- PROJECTS --#
if [ -n PROJECTS_DIR ]; then
    alias pro="cd "$PROJECTS_DIR" && la" # Go to projects
fi

# SET OS SPECIFIC ALIASES
case "$OS" in
    WINDOWS)
        ;;
    MAC)
        #-- BREW --#
        alias bp="brew list"                    # List packages installed with brew
        alias bm="bp"
        ;;
    *)
        ;;
esac

################################################################################

## FUNCTIONS

# FILE / FOLDER OPERATIONS
cl () { cd "$1"; ls -a; }               # Navigate to a directory and list contents
mat () { mkdir "$1"; cd "$1"; }         # Make directory specified and traverse to it
cao () { touch "$1"; open "$1"; }       # create file and open it
cae () { touch "$1"; $MYEDITOR "$1"; }  # create file and open for editing

# GET IP ADDRESS REGARDLESS OF OS
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

################################################################################

## $PATH

## ------------ URGENT ---------------- ##
# needs to check path for existence already as currently adds to path after every
# bash reload. may just need to be chained for one declaration?

# SET PATH
export PATH=~/bin:~/.npm-packages/bin:$PATH
export PATH="$EDITOR_DIR":$PATH

################################################################################