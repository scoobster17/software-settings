### BASH PROFILE ###

echo "Reloading .bash_profile"

# ACCESS SETTINGS IN BASH RC FILE
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi