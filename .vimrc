call pathogen#infect()
call pathogen#helptags()

set nocompatible
set encoding=utf-8
set showcmd
set directory=/tmp
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=indent,eol,start
set background=dark
set history=700
set incsearch
set hlsearch
set ignorecase
set smartcase
set nopaste
set autoindent
set fileformats=unix,dos
set nobackup
set nowritebackup
set comments=sr:/*,mb:*,ex:*/
set wildmenu
set wildmode=longest,full
set wildignore=.svn,.git
set ruler
set rnu
syntax on
filetype plugin indent on

" check syntax
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>
autocmd FileType phtml noremap <C-L> :!/usr/bin/env php -l %<CR>

noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>
inoremap <Up>       <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>

let g:syntastic_html_checkers=[]
