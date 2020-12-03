syntax on

:set noerrorbells
:set expandtab
:set nu rnu
:set nowrap
:set smartcase
:set noswapfile
:set smartindent
:set incsearch

" :set colorcolumn=100
:set clipboard=unnamedplus
:set mouse=a
:set tabstop=2
:set shiftwidth=2

" keybinds
map <C-n> :NERDTreeToggle<CR>

" vim plug calls
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

