################################################################################

### BASH RC ###

# Changes require the following command to be run unless the terminal is closed:
# "source ~/.bash_profile" or "rb" using alias below

echo "Reloading .bashrc"

################################################################################

## $PATH

# SET PATHS
export PATH=~/bin:$PATH

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
#PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '  		# RED (\e[1;31m)
PS1='\n\[\e[1;32m\]\u ../\W/ \$\[\e[0m\] '    	# GREEN (\e[1;32m)

# ACTIVATE COLOURS IN TERMINAL
export CLICOLOR=1

# CONFIGURE COLOURS IN TERMINAL
#
# In pairs, the colours relate to text color (T) and background colour (B) for
# each (TB x 11 = 22 char string)
# 	01. directory
# 	02. symbolic link – special kind of file that contains a reference to another file or directory.
# 	03. socket – special kind of file used for inter-process communication.
# 	04. pipe – special file that connects the output of one process to the input of another.
# 	05. executable
# 	06. block special – a kind of device file.
# 	07. character special – a kind of device file.
# 	08. executable with setuid bit set (setuid is a short for set user ID upon execution).
# 	09. executable with setgid bit set (setgid is a short for set group ID upon execution).
# 	10. directory writable to others, with sticky bit – only the owner can rename or delete files.
# 	11. directory writable to others, without sticky bit – any user with write and execution permissions can rename or delete files.
#
# And the different letters correspond to:
#	a black
#	b red
#	c green
#	d brown
#	e blue
#	f magenta
#	g cyan
#	h light grey
#	x default color
#
# export LSCOLORS=exfxcxdxbxegedabagacad  # Default once colours activated
export LSCOLORS=GxFxCxDxBxegedabagaced

################################################################################

# VARIABLES

MYEDITOR="subl" 						# Symlink to my editor

################################################################################

## ALIASES

# TRAVERSING
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"

# BASH
alias rb="source ~/.bash_profile"		# Reload bash profile
alias obp=$MYEDITOR" ~/.bash_profile"	# Open .bash_profile
alias obr=$MYEDITOR" ~/.bashrc"			# Open .bashrc
alias obh=$MYEDITOR" ~/.bash_history"	# Open bash history

# NPM
alias gnm="npm ls -g --depth 0"			# List npm modules installed globally

# PROJECTS
alias pro="cd /path/to/projects && ls -la"

################################################################################

## FUNCTIONS

# SHORTCUTS
cl () { cd "$1"; ls -a; }				# Navigate to a directory and list contents

################################################################################