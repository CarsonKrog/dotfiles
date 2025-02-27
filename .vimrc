colorscheme wildcharm

" Enable line numbers
set number
set relativenumber

" Disable line wrapping
set nowrap
set nolinebreak

" Keep 8 lines of context when scrolling
set scrolloff=8

" Enable smart indentation
set autoindent
set ignorecase
set smartcase

" Set indentation rules
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" FileType-specific settings for HTML files
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
