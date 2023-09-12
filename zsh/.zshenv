# Make Homebrew work over SSH 
if [[ -f /opt/homebrew/bin/brew ]]; then
    # Homebrew exists at /opt/homebrew for arm64 macos
    export PATH=/opt/homebrew/bin:$PATH
elif [[ -f /usr/local/bin/brew ]]; then
    # or at /usr/local for intel macos
    export PATH=/usr/local/brew:$PATH
fi

# Environment variables
export UNISON=~/.config/unison
