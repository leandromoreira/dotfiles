set nocompatible 
syntax on 
let mapleader=","
set backspace=indent,eol,start 
set backup 
set mouse=a
set clipboard+=unnamed 
set backupdir=~/.vim/backup 
set directory=~/.vim/tmp 
set fileformats=unix,dos,mac 
set hidden 
set noerrorbells 
set wildmenu 
set incsearch 
set hlsearch 
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

try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
  try
    colorscheme desert
  catch /^Vim\%((\a\+)\)\=:E185/
    "okay its up to you chose your own color :P
  endtry
endtry

set background=dark

map <C-o> <Esc>:TlistToggle<CR>

"make taglist available for Clojure
let tlist_clojure_settings = 'lisp;f:function'

"close taglist window when you close the last work window
let Tlist_Exit_OnlyWindow         = 1
let Tlist_Close_On_Select         = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"shows only the current file on taglist browser
let Tlist_Show_One_File           = 1

set wildignore+=public/images,*/bundler,*/bundle,*/.bundle,spec/reports,doc,coverage,tmp
if has('mac')
  set guifont=Monaco:h12
endif

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow      = 1

"http://naleid.com/blog/2011/12/19/getting-a-clojure-repl-in-vim-with-vimclojure-nailgun-and-leiningen/
"needed for repl in the same window
"let vimclojure#NailgunClient = "/home/lrm/bin/ng"
let vimclojure#WantNailgun   = 1
let vimclojure#SplitPos      = "bottom"
let vimclojure#SplitSize     = 10
"see how it works on
