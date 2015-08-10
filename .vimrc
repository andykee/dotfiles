" Enable syntax highlighting
syntax on

" Use the monokai color scheme
colorscheme monokai

" Make Vim more useful
set nocompatible

" Use the OS clipboard by default
set clipboard=unnamed

" Allow cursor keys in insert mode
set esckeys 

" Enable line numbering
set number

" Highlight current line
set cursorline

" Enable mouse for all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don't show the introm message when starting Vim
set shortmess=atI

" Show the (partial) command as its being typed
"set showcmd

" Show the filename in the window titlebar
set title

" Always keep at least 3 lines visible when scrolling up
set scrolloff=3

" Allow backspace in insert mode
set backspace=indent,eol,start

" Turn on audoindentation
set autoindent
filetype indent on

" Status line
set laststatus=2
set statusline=
set statusline+=[%f]	" file path
"set statusline+=[%t] 	" filename
set statusline+=%r	" read only flag
set statusline+=\ %y	" filetype
set statusline+=%=	" left/right separator
set statusline+=%c
set statusline+=\ %l/%L
set statusline+=\ %P
