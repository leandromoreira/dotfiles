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
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
filetype off

set rtp+=~/.vim/bundle/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'jamestomasino/actionscript-vim-bundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-haml.git'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script.git'
Plugin 'pangloss/vim-javascript.git'
Plugin 'othree/html5.vim'
Plugin 'tsaleh/vim-align'
Plugin 'mxw/vim-jsx'
Plugin 'garbas/vim-snipmate'
Plugin 'tomtom/tlib_vim.git'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'honza/vim-snippets.git'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-surround.git'
Plugin 'Townk/vim-autoclose.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'vim-scripts/python.vim--Vasiliev'
Plugin 'rodjek/vim-puppet.git'
Plugin 'vim-scripts/nginx.vim.git'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'claco/jasmine.vim'
Plugin 'vim-scripts/tornadotmpl.vim'
Plugin 'mklabs/grunt.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'kevinw/pyflakes-vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'walm/jshint.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'takac/vim-hardtime'
Plugin 'bling/vim-airline'
Plugin 'ekalinin/Dockerfile.vim'
call vundle#end()

filetype plugin indent on

set shortmess+=A
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

"close taglist window when you close the last work window
let Tlist_Exit_OnlyWindow         = 1
let Tlist_Close_On_Select         = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"shows only the current file on taglist browser
let Tlist_Show_One_File           = 1

set wildignore+=*/build/*,*/node_modules/*,public/images,*/bundler,*/bundle,*/.bundle,spec/reports,doc,coverage,tmp,*.pyc
if has('mac')
  set guifont=Monaco:h13
endif
let g:airline_powerline_fonts = 1

"Mappings that I use often
map <F4> :!rspec %:p --color -fd<CR>
map <F3> :!bundle exec rspec %:p --color -fd<CR>

"Shows extra trailing white space
"stealed from http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
