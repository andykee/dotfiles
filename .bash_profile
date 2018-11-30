# Load the shell dotfiles
# * ~/.ailases
# * ~/.bash_prompt
# * ~/.extra is used for machine-specific settings
# * ~/.path is used to extend '$PATH'.
for file in ~/.{aliases,bash_prompt,extra,path}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#if [ "$(expr substr $(uname -s) 1 6)" == "Darwin" ]; then
if [[ "$(uname -s)" =~ "Darwin" ]]; then
	# Load up OSX specific options
	source ~/.osx
elif [[ "$(uname -s)" =~ "Linux" ]]; then	
	# Load up Linux specific options
	source ~/.linux
fi
