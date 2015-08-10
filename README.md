## Installation

To install/update, `cd` into your local `dotfiles` repository and then:

```bash
source dotfiles.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source dotfiles.sh
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. 
