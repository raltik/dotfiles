call plug#begin()
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set autoread
set number " Show number lines
set autoindent
set smartindent

set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set textwidth=120

set t_Co=256

set showmatch

set comments=sl:/*,mb:\ *,elx:\ */

if &term =~ '256color'
	set t_ut=
endif

if (has("termguicolors"))
	if (!(has("nvim")))
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	endif
    set termguicolors
endif

" NERDTree
let g:WebDevIconsOS = "Darwin"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let NERDTreeNodeDelimiter = "\u263a"

"augroup nerdtree
"	autocmd!
"	autocmd FileType nerdtree setlocal nolist
"	autocmd FileType nerdtree setlocal nocursorline
"augroup END

function! ToggleNerdTree()
	if @% != "" && @% !~ "Startify" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))
		:NERDTreeFind
	else
		:NERDTreeToggle
    endif
endfunction

nmap <F2> :call ToggleNerdTree()<CR>

let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }

" NERDTree


syntax on
filetype plugin indent on

set background=dark
colorscheme one

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

let &path.="src/include,../include,include,/usr/include/AL"

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


