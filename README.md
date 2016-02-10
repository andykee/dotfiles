# dotfiles
A collection of dotfiles tailored to meet my needs. Based on [dotfiles](https://github.com/mathiasbynens/dotfiles) by mathiasbynens.

## Installation
To install/update, `cd` into your local `dotfiles` repository and then:

```bash
source dotfiles.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source dotfiles.sh
```

### Features
* Commonly used aliases
* A compact bash prompt including inline git branch and status information
* Operating system-specific configurations for both OSX and \*nix
* Hostname-specific configrations are captured in `.extra` (optional)
* Git configuration including some basic shortcuts
* A sensible `vim` configuration with [pathogen](https://github.com/tpope/vim-pathogen) and [airline](https://github.com/vim-airline/vim-airline)
* [Solarized](http://ethanschoonover.com/solarized), [monokai](https://github.com/sickill/vim-monokai), and [gruvbox](https://github.com/morhetz/gruvbox) colorstyles for `vim`.

## Extras
In addition to the basic dotfiles, a few extras are included in `extras`:

### `osx.sh`
Sets a number of nice to have OSX defaults. Only needs to be run when setting up a new machine:

```bash
./osx.sh
```

### `brew.sh`
Installs a number of [Homebrew](http://brew.sh) formulae that I use. Note that some of the configurations made by `dotfiles` rely on having these packages installed. Again, only needs to be run when setting up a new machine:

```bash
./brew.sh
```

### OSX Terminal Profiles 
OSX Yosemite added support for 256 colors and the ability to import/export terminal profiles. Profiles for solarized dark, monokai, and gruvbox are included here.

### Fonts
I use [Adobe Source Code Pro](https://github.com/adobe-fonts/source-code-pro), which is included here. Version 2.010 added support for powerline fonts (used by vim-airline), which was very nice of them to do.

