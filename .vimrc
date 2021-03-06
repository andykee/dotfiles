" LEADER
let mapleader="\<Space>"

" PATHOGEN
execute pathogen#infect()

" COLORS
syntax enable		" enable syntax highlighting
set t_Co=256        " use 256 colors
colorscheme solarized	" monokai colorscheme
set background=dark

" SPACES AND TABS
set tabstop=4		" 4 visual spaces per tab
set softtabstop=4	" 4 spaces per tab when editing
set expandtab		" convert tabs to spaces
set shiftwidth=4 	" 4 spaces per indentation level
filetype indent on	" filetype-specific indentation rules
"set autoindent 	" copy indentation level from previous line

" UI CONFIG
set number          " show line numbers
set cursorline      " highlight current line
set showmatch       " highlight matching during search
set shortmess=atI   " disable vi startup message
set scrolloff=3     " always keep at least 3 lines visible when scrolling to eof
set title           " show filename in window titlebar
set wildmenu        " show tab completion options

" SEARCH
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" NAVIGATION
set mouse=a         " enable mouse in all modes
set backspace=indent,eol,start  " allow backspaces in insert mode

" SOUNDS
set noerrorbells    " disable error bells

" STATUS LINE
"set laststatus=2
"set statusline=
"set statusline+=[%f]    " file path
"set statusline+=[%t]    " filename
"set statusline+=%r      " read only flag
"set statusline+=\ %y    " filetype
"set statusline+=%=      " l/r separator
"set statusline+=%c     " line position (char)
"set statusline+=\ %l/%L " document position (line)
"set statusline+=\ %P    " document position (%)

" ENCODING
set encoding=utf-8      " UTF-8 encoding

" SPLIT & BUFFER NAVIGATION SHORTCUTS
nnoremap <C-L> <C-W><C-L> " move to right split
nnoremap <C-H> <C-W><C-H> " move to left split
nnoremap <C-R> <C-W><C-R> " l/r split swap
nnoremap <C-K> :bn<CR>    " next buffer
nnoremap <C-J> :bp<CR>    " previous buffer
nnoremap <C-W> :b#<bar>bd#<CR>    " close current buffer

" BUFFER CONFIG
set hidden              " allow buffers to be hidden with unsaved changes
set splitbelow          " more natural sp behavior
set splitright          " more natural vsp behavior

" AIRLINE
let g:airline_powerline_fonts=1
let g:bufferline_echo=0
let g:airline#extensions#whitespace#enable=0    " disable whitespace warnings
let g:airline#extensions#tabline#enabled=1      " enable enhanced tabline
let g:airline#extensions#tabline#tab_min_count=2 " require 2 tabs to be open before showing tabline
let g:airline#extensions#tabline#buffer_min_count=2 " ditto buffers
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=0        " show git branch instead of change count 
set timeoutlen=50
set laststatus=2
set noshowmode          " hide bottom status line
