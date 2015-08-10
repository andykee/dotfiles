" COLORS
colorscheme monokai 	" monokai colorscheme
syntax enable 		" enable syntax processing

" SPACES AND TABS
set tabstop=4 		" 4 visual spaces per tab
set softtabstop=4	" 4 spaces per tab when editing
set expandtab		" convert tabs to spaces
set shiftwidth=4	" 4 spaces per indentation level
filetype indent on	" load filetype-specific indent files
"set autoindent		" copy indentation level from previous line

" UI CONFIG
set number 		" show line numbers
set cursorline		" highlight current line
set showmatch 		" highlight matching [{()}]
set wildmenu		" visual autocomplete for command menu
set shortmess=atI 	" don't show the intro message when starting vim
set scrolloff=3		" always keep at least 3 lines visible when scrolling to eof
set title		" show the filename in the window titlebar

" SEARCH
set incsearch		" search as characters are entered
set hlsearch		" highlight matches
" use ,<space> to unhighlight old search results
noremap <leader><space> :nohlsearch<CR>

" LEADER SHORTCUT
let mapleader=","	" use comma for custom command leader

" NAVIGATION
set mouse=a 		" enable mouse in all modes
set backspace=indent,eol,start	" allow backspaces in insert mode

" SOUNDS
set noerrorbells	" disable error bells	

" STATUS LINE
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
