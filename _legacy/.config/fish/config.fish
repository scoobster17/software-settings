set_color yellow;
echo \n"Reloading config.fish"
set_color normal;

switch (uname)
#  case Linux
#  	echo "Linux"
#  case Windows
#    echo "Windows"
  case Darwin
    echo "OS is Mac OS/OSX"
    set -x OS "Mac"
end

if test -e ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end

if test -e ~/.config/fish/aliases.fish
  source ~/.config/fish/aliases.fish
end

if test -e ~/.config/fish/functions.fish
  source ~/.config/fish/functions.fish
end

# stop fish shell showing kubernetes context
set theme_display_k8s_context no

echo ""
