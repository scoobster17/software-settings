################################################################################

### BASH PROFILE ###

# Changes require the following command to be run unless the terminal is closed
# source ~/.bash_profile

################################################################################

# $PATH

# SET PATHS
export PATH=~/bin:$PATH

################################################################################

# DEFAULT SETTINGS

# SET DEFAULT EDITOR
# relies on https://www.sublimetext.com/docs/2/osx_command_line.html
# ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
export EDITOR=~/bin/subl

################################################################################

# COLOURS

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
export LSCOLORS=GxFxCxDxBxegedabagaced  # Default once colours activated

################################################################################

# ALIASES

# TERMINAL SHORTCUTS
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"

# EXAMPLE OF ALIAS WITH PARAMETER
# in below example 'goto ~' is the same as 'cd ~'
# goto () { cd "$1"; }

# ALIASES
# alias something="cd ~/something/sub/folder"

################################################################################