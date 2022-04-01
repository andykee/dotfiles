# Other dotfiles
if [ -e ~/.aliases ]; then source ~/.aliases; fi
if [ -e ~/.gitprompt ]; then source ~/.gitprompt; fi
if [ -e ~/.localrc ]; then source ~/.localrc; fi

# Set the terminal title to the cwd
PS1="\\[\033]0;\w\007\]";

# Prompt
if [ -v CONDA_EXE ]; then
    source ~/.condaprompt
    PS1+="\$(conda_prompt)";
fi

#PS1+='[\u@\h \w]\$(__git_ps1 " (%s)")\$ ';
PS1+="[\u@\h \w]\$(__git_ps1)\$ ";
