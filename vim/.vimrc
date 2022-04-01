" LEADER
let mapleader=" "

" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'airblade/vim-gitgutter'
call plug#end()

" COLORS
syntax enable		" enable syntax highlighting
set t_Co=256        " use 256 colors
colorscheme gruvbox	" gruvbox colorscheme
set background=dark

" SPACES AND TABS
set tabstop=4		" 4 visual spaces per tab
set softtabstop=4	" 4 spaces per tab when editing
set expandtab		" convert tabs to spaces
set shiftwidth=4 	" 4 spaces per indentation level
filetype indent on	" filetype-specific indentation rules
set autoindent 	    " copy indentation level from previous line

" UI CONFIG
set number          " show line numbers
set cursorline      " highlight current line
set showmatch       " highlight matching during search
set shortmess=atI   " disable vi startup message
set scrolloff=8     " always keep at least 3 lines visible when scrolling to eof
set title           " show filename in window titlebar
set wildmenu        " show tab completion options

" SEARCH
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
nnoremap n nzzzv    " center search jumps
nnoremap N Nzzzv    " center search jumps

" NAVIGATION
set mouse=a         " enable mouse in all modes
set backspace=indent,eol,start  " allow backspaces in insert mode

" SOUNDS
set noerrorbells    " disable error bells

" ENCODING
set encoding=utf-8      " UTF-8 encoding

" SPLIT & BUFFER NAVIGATION SHORTCUTS
nnoremap <C-L> <C-W><C-L> " move to right split
nnoremap <C-H> <C-W><C-H> " move to left split
nnoremap <C-R> <C-W><C-R> " l/r split swap
nnoremap <C-K> :bn<CR>    " next buffer
nnoremap <C-J> :bp<CR>    " previous buffer
nnoremap <C-W> :b#<bar>bd#<CR>    " close current buffer
nnoremap <C-N> :NERDTreeToggle<CR>

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

" fix missing column number symbol issue
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.colnr = "\u33c7"

" NERDTREE
"
" " Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

