# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias db="cd ~/Dropbox"
alias dev="cd ~/dev"
alias c="clear"
alias bean="cd ~/Dropbox/beancount"

alias mkcondaenv="conda create --name"
alias lscondaenv="conda env list"
alias workon="conda activate"
alias deactivate="conda deactivate"

source ~/.gitprompt
source ~/.condaprompt
zstyle ':completion:*:*:git:*' script ~/.git-completion-bash
#source ~/.git-completion-zsh

if [ -e ~/.extra ]; then
    source ~/.extra
fi

# MacOS
if [[ "$(uname -s)" =~ "Darwin" ]]; then
    # Aliases
    alias ll="gls -lh --group-directories-first --color=auto"
    alias la="gls -lah --group-directories-first --color=auto"
    alias ls="gls --color=auto"

    alias vi="/usr/local/bin/vim"
    alias vim="/usr/local/bin/vim"    

    # Make sure Homebrew packages take precedence over system packages
    export PATH=/usr/local/bin:$PATH

    # Anaconda setup
    __conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
            . "/usr/local/anaconda3/etc/profile.d/conda.sh"
        else
            export PATH="/usr/local/anaconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup

# Linux
elif [[ "$(uname -s)" =~ "Linux" ]]; then
    # Aliases
    alias ll="ls -lh --group-directories-first --color=auto"
    alias la="ls -lah --group-directories-first --color=auto"
    alias ls="ls --color=auto"

    # Remap caps lock to escape
    xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

fi

setopt PROMPT_SUBST ; PS1='$(conda_prompt)[%n@%m %~]$(__git_ps1 " (%s)")%# '

#PROMPT='[$FG[228]%~%{$reset_color%}]'
#PROMPT+=' $(__git_ps1)'
#PROMPT+=' %(?.$FG[154].$FG[009])€%{$reset_color%} '

# Set the terminal title to the current working directory.
###PS1="\\[\033]0;\w\007\]";

# This is the actual displayed prompt
###PS1+="\$(conda_prompt)[\u@\h \w]\$(git_prompt)\$ ";
#PS1+="\u"; 	# username
#PS1+="@";
#PS1+="\h";	# host
#PS1+=" ";
#PS1+="\w";	# working directory
#PS1+="]";
#PS1+="\$(git_prompt)"; # Git repository details
#PS1+="\$";
#PS1+=" ";         
###export PS1