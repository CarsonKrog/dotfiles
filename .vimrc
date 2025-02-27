syntax on

colorscheme slate

" Enable line numbers
set number
" Enable relative line numbers
set relativenumber

" Disable line wrapping
set nowrap
set nolinebreak

" Keep 8 lines visible when scrolling
set scrolloff=8

" Enable auto indentation
set autoindent
" Case-insensitive search unless uppercase is used
set ignorecase
set smartcase

" Set indentation options
set shiftwidth=4    " Number of spaces for each indentation
set tabstop=4       " Number of spaces for a tab
set softtabstop=4   " Number of spaces a tab counts for
set expandtab       " Convert tabs to spaces

" Set the leader key to space
let mapleader = " "
" Remap split navigation to Ctrl + h/j/k/l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Map vertical split to <leader>\
nnoremap <leader>\ :vsplit<CR>

" Map horizontal split to <leader>-
nnoremap <leader>- :split<CR>
