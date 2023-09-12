# Other dotfiles
if [ -e ~/.aliases ]; then source ~/.aliases; fi
if [ -e ~/.gitprompt ]; then 
    source ~/.gitprompt; 
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
fi

if [ -e ~/.localrc ]; then source ~/.localrc; fi

# Environment variables
export UNISON=~/.config/unison

# Make Homebrew work over SSH 
if [[ -f /opt/homebrew/bin/brew ]]; then
    # Homebrew exists at /opt/homebrew for arm64 macos
    export PATH=/opt/homebrew/bin:$PATH
elif [[ -f /usr/local/bin/brew ]]; then
    # or at /usr/local for intel macos
    export PATH=/usr/local/brew:$PATH
fi

# Set the terminal title to the cwd
PS1="\\[\033]0;\w\007\]";

# Prompt
if [ -v CONDA_EXE ]; then
    source ~/.condaprompt
    PS1+="\$(conda_prompt)";
fi

#PS1+='[\u@\h \w]\$(__git_ps1 " (%s)")\$ ';
PS1+="[\u@\h \w]\$(__git_ps1)\$ ";
