set_color yellow;
echo \n"Reloading functions.fish"
set_color normal;

function ip
  switch $OS
#    case Windows
#      ipconfig
    case Mac
      ifconfig | grep "inet " |  grep -v 127.0.0.1
  end
end