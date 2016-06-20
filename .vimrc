let mapleader=","

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'
Plugin 'valloric/youcompleteme'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'leafgarland/typescript-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/unite.vim'
Plugin 'mhartington/vim-typings'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'Slava/tern-meteor'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

set hidden
set nowrap
set expandtab
set tabstop=2
set backspace=indent,eol,start
set autoindent
set number
set shiftwidth=2
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
"set visualbell
set noerrorbells

set nobackup
set noswapfile

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>

nnoremap j gj
nnoremap k gk

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null

if $TERM == "xterm-256color"
  set t_Co=256
endif

set showcmd
set foldmethod=marker

set wildmenu
" set wildmode=list:longest,full

"set cul


let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

nnoremap ; :
nnoremap : ;

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
