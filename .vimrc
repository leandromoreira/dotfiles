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
map <C-o> <Esc>:TlistToggle<CR>

"make taglist available for Clojure
let tlist_clojure_settings = 'lisp;f:function'

"close taglist window when you close the last work window
let Tlist_Exit_OnlyWindow         = 1
let Tlist_Close_On_Select         = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"shows only the current file on taglist browser
let Tlist_Show_One_File           = 1

set wildignore+=public/images,*/bundler,*/bundle,*/.bundle,spec/reports,doc,coverage
if has('mac')
  set guifont=Monaco:h12  
else
  colorscheme desert
endif

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow      = 1

"needed for repl in the same window
let vimclojure#NailgunClient = "/home/lrm/bin/ng"
let vimclojure#WantNailgun   = 1
let vimclojure#SplitPos      = "bottom"
let vimclojure#SplitSize     = 10
"see how it works on
"http://naleid.com/blog/2011/12/19/getting-a-clojure-repl-in-vim-with-vimclojure-nailgun-and-leiningen/

