### BASH PROFILE ###

echo -e "\nReloading .bash_profile"

# ACCESS LOCAL SPECIFIC SETTINGS
if [ -f ~/.bashlocal ]; then
    source ~/.bashlocal
fi

# ACCESS SETTINGS IN BASH RC FILE
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
