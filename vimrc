set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()


set noswapfile
set nobackup
set splitright
set splitbelow
set encoding=utf-8

set ruler


syntax on
set number
filetype plugin indent on

set wildmenu

let colorspace=256
colorscheme gruvbox
set background=dark
set linespace=20

set cursorline

set autoread

set shiftround
set tabstop=4
set autoindent
set hlsearch
set ignorecase
set smarttab
set hidden

"CTRL-S is save!
noremap <C-S> :w<CR>
vnoremap <C-S> <C-C>:w<CR>
inoremap <C-S> <C-O>:w<CR>

" Remember last lin
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

