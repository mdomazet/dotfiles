set exrc
set guicursor=
set number
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undofile
set undodir=~/.local/share/nvim/undodir
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set mouse-=a

call plug#begin(stdpath('data') . '/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'mbbill/undotree'
call plug#end()

colorscheme nord

let mapleader = " "
nnoremap <F5> :UndotreeToggle<CR>

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>y  "+y
" Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup DOMAZET
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
augroup END
