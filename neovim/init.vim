"*******************
" PLUGINS
"*******************
call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

"********************

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set binary
set bomb

"" Line number
set relativenumber

set backspace=indent,eol,start

"" Tabs
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" No swap files
set nobackup
set noswapfile

set fileformats=unix,dos,mac

set lazyredraw
set ttimeoutlen=0

set shell=/bin/zsh


"*************************************************************
"" Visual Settings
"*************************************************************
syntax on
set ruler
set number
set termguicolors

set t_Co=256
set guioptions=egmrti

set linespace=3
set cursorline

set scrolloff=3
