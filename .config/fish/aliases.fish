set_color yellow;
echo \n"Reloading aliases.fish"
set_color normal;

# Fish
alias rf="source ~/.config/fish/config.fish"
alias ofc="subl ~/.config/fish/config.fish"
alias ofa="subl ~/.config/fish/aliases.fish"
alias ofh="subl ~/.local/share/fish/fish_history"

# Terminal
alias la="ls -la"

# NPM
alias gnm="npm ls -g --depth 0"
alias rnm="rm -rf ./node_modules/"

# Git
alias gs="git st"

# Webstorm
alias ws="webstorm"

# Sublime
alias subl="$HOME/bin/subl"

# Misc
if set -q PROJECTS_DIR
  alias pro="cd $PROJECTS_DIR"
else
  echo "Please set project directory."
end
alias set_bash_as_shell="chsh -s /bin/bash"