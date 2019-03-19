
# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias db="cd ~/Dropbox"
alias dev="cd ~/dev"
alias c="clear"

source ~/.bash_prompt
source ~/.git-completion.bash
[[ -e ~/.extra ]] && source ~/.extra

if [[ "$(uname -s)" =~ "Darwin" ]]; then
    # Aliases
    alias ll="gls -lh --group-directories-first --color=auto"
    alias la="gls -lah --group-directories-first --color=auto"
    alias ls="gls --color=auto"

    alias vi="/usr/local/bin/vim"
    alias vim="/usr/local/bin/vim"
    
    alias mkcondaenv="conda create --name"
    alias lscondaenv="conda env list"
    alias workon="conda activate"
    alias deactivate="conda deactivate"

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


elif [[ "$(uname -s)" =~ "Linux" ]]; then
    # Aliases
    alias ll="ls -lh --group-directories-first --color=auto"
    alias la="ls -lah --group-directories-first --color=auto"
    alias ls="ls --color=auto"

    # Remap caps lock to escape
    xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

fi


