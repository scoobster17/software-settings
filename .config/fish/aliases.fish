set_color yellow;
echo \n"Reloading aliases.fish"
set_color normal;



# Terminal
alias la="ls -la"

# NPM
alias gnm="npm ls -g --depth 0"
alias rnm="rm -rf ./node_modules/"

# Git
alias gs="git st"
alias ug="git clone https://github.com/git/git" # Update Git to latest development version

# Webstorm
alias ws="webstorm" # Webstorm found in /usr/local/bin

# Sublime
alias subl="$HOME/bin/subl"

# Misc
if set -q PROJECTS_DIR
  alias pro="cd $PROJECTS_DIR"
else
  echo "Please set project directory."
end
