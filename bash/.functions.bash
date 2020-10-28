echo "Setting up custom functions"

#-- NETWORK --#
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

#-- FILE / FOLDER OPERATIONS --#
cl () { cd "$1"; ls -a; }               # Navigate to a directory and list contents
mat () { mkdir "$1"; cd "$1"; }         # Make directory specified and traverse to it
cao () { touch "$1"; open "$1"; }       # create file and open it
cae () { touch "$1"; $MYEDITOR "$1"; }  # create file and open for editing

#-- ALIAS-LIKE --#
oit () {
  open -a iTerm .
}

#-- WORK --#
oke () {
  cd $PROJECTS_DIR
  cd backend/tools
  git pull --all
  sleep 3 && open http://localhost:8801 &
  bin/kube mce
}
