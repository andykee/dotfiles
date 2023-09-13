# Other dotfiles
if [ -e ~/.aliases ]; then source ~/.aliases; fi
if [ -e ~/.gitprompt ]; then 
    source ~/.gitprompt; 
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
fi

#if [ -e ~/.localrc ]; then source ~/.localrc; fi

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


# function to determine whether this machine is an s383 machine
s383 () {
    if [ -e /etc/ssh/ssh_banner_message ]; then
        if [ -n $(grep -c s383 /etc/ssh/ssh_banner_message) ]; then
            true; return
        fi
    elif [ $HOSTNAME == ravertc.jpl.nasa.gov ]; then
        true; return
    else
        false; return
    fi
}

# localrc
# note this block is only executed if .bashrc is symlinked to somewhere
# outside of $HOME
BASHRC_PATH=$(realpath "${BASH_SOURCE[0]}")
BASH_DIR=$(dirname $BASHRC_PATH)
if [ $HOME != $BASH_DIR ]; then
    DOTFILES_PATH=$(dirname $BASH_DIR)

    if [ -e $HOME/.localrc ]; then
        rm $HOME/.localrc;
    fi
    
    if [ -e $DOTFILES_PATH/local/.local-$HOSTNAME ]; then
        ln -s $DOTFILES_PATH/local/.local-$HOSTNAME $HOME/.localrc;
        source $HOME/.localrc;
    elif s383; then
        ln -s $DOTFILES_PATH/local/.local-s383.jpl.nasa.gov $HOME/.localrc;
        source $HOME/.localrc;
    fi
fi



