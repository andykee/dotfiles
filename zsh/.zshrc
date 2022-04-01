# Other dotfiles
if [ -e ~/.aliases ]; then source ~/.aliases; fi
if [ -e ~/.gitprompt ]; then 
    source ~/.gitprompt; 
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
fi
if [ -e ~/.localrc ]; then source ~/.localrc; fi

# Prompt
if [ -v CONDA_EXE ]; then
    source ~/.condaprompt
    setopt PROMPT_SUBST ; PS1='$(conda_prompt)[%n@%m %~]$(__git_ps1 " (%s)")%# '
else
    setopt PROMPT_SUBST ; PS1='[%n@%m %~]$(__git_ps1 " (%s)")%# '
fi

