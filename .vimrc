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

" SEARCH
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" LEADER
let mapleader="\<Space>"

" NAVIGATION
set mouse=a         " enable mouse in all modes
set backspace=indent,eol,start  " allow backspaces in insert mode

" SOUNDS
set noerrorbells    " disable error bells

" STATUS LINE
set laststatus=2
set statusline=
set statusline+=[%f]    " file path
"set statusline+=[%t]    " filename
set statusline+=%r      " read only flag
set statusline+=\ %y    " filetype
set statusline+=%=      " l/r separator
"set statusline+=%c     " line position (char)
set statusline+=\ %l/%L " document position (line)
set statusline+=\ %P    " document position (%)

" ENCODING
set encoding=utf-8      " UTF-8 encoding

" SPLIT CONFIG
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-R> <C-W><C-R>
set splitbelow
set splitright

" AIRLINE
let g:airline_powerline_fonts=1
let g:bufferline_echo=0
set timeoutlen=50
set laststatus=2
set noshowmode          " hide bottom status line
