call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
call plug#end()

set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set hlsearch
set mouse=a
set nocompatible
set noswapfile
set number
set ruler
set shiftwidth=2
set tabstop=2
set termguicolors

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

colorscheme nord
