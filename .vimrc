
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'w0ng/vim-hybrid'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
"Plugin 'valloric/youcompleteme'
Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'
"Plugin 'othree/html5.vim'
"Plugin 'elzr/vim-json'
Plugin 'shougo/neocomplete.vim'
"Plugin 'yggdroot/indentline'
Plugin 'junegunn/vim-easy-align'
"Plugin 'Chiel92/vim-autoformat'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'digitaltoad/vim-jade'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mxw/vim-jsx'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
"Plugin 'mhinz/vim-startify'
Plugin 'ekalinin/dockerfile.vim'
call vundle#end()
filetype plugin indent on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

colorscheme solarized
let g:solarized_termcolors=16
let g:solarized_termtrans=1

set splitbelow    " Open new split panes to right and bottom, which feels more natural
set splitright
set tabstop=2     " Softtabs, 2 spaces
set shiftwidth=2
set shiftround
set expandtab
set nobackup
set nowritebackup
set noswapfile
set history=1000
set autoread      " automatically read feil that has been changed on disk and doesn't have changes in vim"
set showcmd       " display incomplete commands
set showmatch     " Show matching brackets."
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set backspace=indent,eol,start
set hidden
set background=dark
set list listchars=tab:»·,trail:·,nbsp:·     " Display extra whitespace
set number
set wildmenu       " visual autocomplete for command menu
set smartcase
set ignorecase
set hlsearch
set cursorline
set visualbell t_vb=
set clipboard=exclude:.*

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

noremap ; :
noremap : ;

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:ackprg = 'ag --nogroup --nocolor --column'

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" NERDTree toggle
noremap <leader>t :NERDTreeToggle<CR>

"let g:indentLine_char = ':'
"let g:indentLine_color_term = 239

"---- Easy Align ---- {{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

augroup FileType sh,perl
  let g:easy_align_delimiters = {
      \ 's': {
      \     'pattern':       '\$',
      \     'ignore_groups': ['Comment'],
      \     'left_margin':   0,
      \     'right_margin':  0,
      \     'indentation':   'shallow',
      \     'stick_to_left': 0
      \     },
      \ '=': {
      \     'pattern':       '=',
      \     'ignore_groups': ['Comment'],
      \     'left_margin':   0,
      \     'right_margin':  0,
      \     'indentation':   'deep',
      \     'stick_to_left': 0
      \     }
  \}
  augroup END
"}}}

