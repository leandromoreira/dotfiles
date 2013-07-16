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
au BufNewFile,BufRead *.conf set filetype=conf
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'jamestomasino/actionscript-vim-bundle'
Bundle 'scrooloose/nerdtree.git'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/VimClojure.git'
Bundle 'tpope/vim-haml.git'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'pangloss/vim-javascript.git'
Bundle 'othree/html5.vim'
Bundle 'tsaleh/vim-align'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim.git'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'honza/vim-snippets.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'vim-scripts/taglist.vim'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround.git'
Bundle 'Townk/vim-autoclose.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'vim-scripts/python.vim--Vasiliev'
Bundle 'rodjek/vim-puppet.git'
Bundle 'vim-scripts/nginx.vim.git'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'claco/jasmine.vim'
Bundle 'vim-scripts/tornadotmpl.vim'
Bundle 'mklabs/grunt.vim'

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

if !has('mac')
  try
    colorscheme desert
  catch /^Vim\%((\a\+)\)\=:E185/
    "okay its up to you chose your own color :P
  endtry
endif

set background=dark

"handling split of windows I stole this from
"http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

map <C-o> <Esc>:TlistToggle<CR>
"Keeping the control + t as file searcher 'til my fingers get used to CtrlP
map <C-t> <Esc>:CtrlP<CR>
"Since I'd never remembered buffers commands at least here I can buffer list
"all and better using ctrl+shift+b ;)
map <C-B> <Esc>:CtrlPBuffer<CR>

"Matching files showing above
let g:ctrlp_match_window_reversed = 0
"Change the default behavior for new tab with file thanks to
"https://github.com/kien/ctrlp.vim/issues/289
let g:ctrlp_working_path_mode     = 0
let g:ctrlp_dotfiles              = 0
let g:ctrlp_show_hidden           = 1

"make taglist available for Clojure
let tlist_clojure_settings = 'lisp;f:function'

"close taglist window when you close the last work window
let Tlist_Exit_OnlyWindow         = 1
let Tlist_Close_On_Select         = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"shows only the current file on taglist browser
let Tlist_Show_One_File           = 1

set wildignore+=public/images,*/bundler,*/bundle,*/.bundle,spec/reports,doc,coverage,tmp,*.pyc
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

"Mappings that I use often
map <F4> :!bundle exec rspec %:p --color -fd<CR>

"Shows extra trailing white space
"stealed from http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
