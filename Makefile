# Minimal makefile for dotfile management

HOMEDIR = ~
CONFIGDIR = ~/.config
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
HOSTNAME = $(shell hostname)

define link
	if ! [ -e $(2) ]; then \
		ln -sv $(1) $(2); \
	fi
endef

define unlink
	if [ -e $(1) ]; then \
		rm -v $(1); \
	fi
endef

.SILENT: all bash clean conda git shell tmux unison vim zsh
.PHONY: bash conda git shell tmux unison vim zsh

all: bash conda git local shell tmux unison vim zsh

bash:
	$(call link, $(ROOT_DIR)/bash/.bash_profile, $(HOMEDIR)/.bash_profile)
	$(call link, $(ROOT_DIR)/bash/.bashrc, $(HOMEDIR)/.bashrc)

conda: 
	$(call link, $(ROOT_DIR)/conda/.condarc, $(HOMEDIR)/.condarc)
	$(call link, $(ROOT_DIR)/conda/.condaprompt, $(HOMEDIR)/.condaprompt)

git: 
	$(call link, $(ROOT_DIR)/git/.gitconfig, $(HOMEDIR)/.gitconfig)
	$(call link, $(ROOT_DIR)/git/.gitprompt, $(HOMEDIR)/.gitprompt)

shell:
	$(call link, $(ROOT_DIR)/shell/.aliases, $(HOMEDIR)/.aliases)
	$(call link, $(ROOT_DIR)/shell/.hushlogin, $(HOMEDIR)/.hushlogin)

tmux:
	$(call link, $(ROOT_DIR)/tmux/.tmux.conf, $(HOMEDIR)/.tmux.conf)

unison:
	if ! [ -e $(CONFIGDIR) ]; then \
		mkdir $(CONFIGDIR); \
	fi
	$(call link, $(ROOT_DIR)/unison, $(CONFIGDIR)/unison)

vim:
	$(call link, $(ROOT_DIR)/vim/.vim, $(HOMEDIR)/.vim)
	$(call link, $(ROOT_DIR)/vim/.vimrc, $(HOMEDIR)/.vimrc)

zsh:
	$(call link, $(ROOT_DIR)/zsh/.zprofile, $(HOMEDIR)/.zprofile)
	$(call link, $(ROOT_DIR)/zsh/.zshenv, $(HOMEDIR)/.zshenv)
	$(call link, $(ROOT_DIR)/zsh/.zshrc, $(HOMEDIR)/.zshrc)

clean:
	$(call unlink, $(HOMEDIR)/.aliases)
	$(call unlink, $(HOMEDIR)/.bashrc)
	$(call unlink, $(HOMEDIR)/.bash_profile)
	$(call unlink, $(HOMEDIR)/.condarc)
	$(call unlink, $(HOMEDIR)/.condaprompt)
	$(call unlink, $(HOMEDIR)/.gitconfig)
	$(call unlink, $(HOMEDIR)/.gitprompt)
	$(call unlink, $(HOMEDIR)/.localrc)
	$(call unlink, $(HOMEDIR)/.hushlogin)
	$(call unlink, $(HOMEDIR)/.tmux.conf)
	$(call unlink, $(CONFIGDIR)/unison)
	$(call unlink, $(HOMEDIR)/.vim)
	$(call unlink, $(HOMEDIR)/.vimrc)
	$(call unlink, $(HOMEDIR)/.zprofile)
	$(call unlink, $(HOMEDIR)/.zshenv)
	$(call unlink, $(HOMEDIR)/.zshrc)
