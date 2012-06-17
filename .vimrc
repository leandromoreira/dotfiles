set nocompatible 
syntax on 
let mapleader=","
set backspace=indent,eol,start 
set backup 
set backupdir=~/.vim/backup 
set clipboard+=unnamed 
set directory=~/.vim/tmp 
set fileformats=unix,dos,mac 
set hidden 
set noerrorbells 
set wildmenu 
set incsearch 
set nohlsearch 
set number 
set showcmd 
set cursorline
set showmatch 
set expandtab 
set ignorecase 
set nowrap 
set shiftround 
set smartcase 
set shiftwidth=2 
set softtabstop=2 
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on 
colorscheme solarized
set background=dark

"adjust command t cancel
if ! has('gui_running')
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

map <C-t> <Esc>:CommandT<CR>

set wildignore+=public/images,*/bundler,*/bundle,*/.bundle,spec/reports,doc,coverage
if has('mac')
  set guifont=Monaco:h12  
else
  colorscheme desert
endif

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow      = 1

