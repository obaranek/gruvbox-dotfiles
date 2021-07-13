call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

Plug 'morhetz/gruvbox'

Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'

Plug 'maxmellon/vim-jsx-pretty'

Plug 'rbgrouleff/bclose.vim'

Plug 'mhinz/vim-startify'
call plug#end()

