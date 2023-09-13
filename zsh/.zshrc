# Other dotfiles
if [ -e ~/.aliases ]; then source ~/.aliases; fi
if [ -e ~/.gitprompt ]; then 
    source ~/.gitprompt; 
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
fi

# localrc - note this block is only executed if .zshrc is symlinked
# to somewhere outside of $HOME
ZSHRC_PATH=$(readlink ${(%):-%N})
ZSH_DIR=$(dirname $ZSHRC_PATH)
if [ $HOME != $ZSH_DIR ]; then
    DOTFILES_PATH=$(dirname $ZSH_DIR)

    if [ -e $HOME/.localrc ]; then
        rm $HOME/.localrc;
    fi
    if [ -e $DOTFILES_PATH/local/.local-$HOST ]; then
        ln -s $DOTFILES_PATH/local/.local-$HOST $HOME/.localrc;
        source .localrc
    fi

fi


# Prompt
if [ -v CONDA_EXE ]; then
    source ~/.condaprompt
    setopt PROMPT_SUBST ; PS1='$(conda_prompt)[%n@%m %~]$(__git_ps1 " (%s)")%# '
else
    setopt PROMPT_SUBST ; PS1='[%n@%m %~]$(__git_ps1 " (%s)")%# '
fi

