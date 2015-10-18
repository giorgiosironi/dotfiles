call pathogen#infect()
call pathogen#helptags()

set nocompatible
set encoding=utf-8
set showcmd
set directory=/tmp
set tabstop=4
set softtabstop=4
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
set nu
set cursorline
set showcmd
set tabpagemax=100
syntax on
filetype plugin indent on

" check syntax
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>
autocmd FileType phtml noremap <C-L> :!/usr/bin/env php -l %<CR>

" indentation for Ruby
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set softtabstop=2
autocmd FileType ruby set shiftwidth=2

" indentation for JavaScript
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set shiftwidth=2

noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>
inoremap <Up>       <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>
" inoremap <Esc>      <NOP>

nnoremap <Leader><space> :nohlsearch<CR>

let g:syntastic_html_checkers=[]
let g:syntastic_yaml_checkers=[]
let g:syntastic_elixir_checkers=[]

function! CurrentNamespace()
    let path = split(expand("%:p"), "/")
    let pathInverted = copy(path)
    call reverse(pathInverted)
    let rootFolder = -1
    for folder in pathInverted
        let firstCharacter = strpart(folder, 0, 1)
        if (firstCharacter ==# toupper(firstCharacter))
            let rootFolder = rootFolder - 1
        else
            break
        endif
    endfor
    let namespace = join(path[rootFolder+1:-2], "\\")
    return namespace
endfunction

