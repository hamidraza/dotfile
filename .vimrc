let mapleader=","

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'valloric/youcompleteme'
Plugin 'sheerun/vim-polyglot'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark

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
set cursorline
set t_Co=256

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
"set visualbell
set noerrorbells

set relativenumber

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

set showcmd
set foldmethod=marker

set wildmenu

nnoremap ; :
nnoremap : ;


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:ycm_autoclose_preview_window_after_completion = 1

autocmd BufEnter *.png,*.jpg,*.jpeg,*gif,*.ico exec "! ~/.iterm2/imgcat ".expand("%") | :bw

let g:flow#autoclose = 1

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif
