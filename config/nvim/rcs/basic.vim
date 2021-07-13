set relativenumber
set backspace=indent,eol,start
set nohlsearch
set hidden
filetype plugin on
set wildmenu                    " Turn on the Wild menu
set wildmode=longest,list,full  " Better looking wildmenu for autocompletion
filetype indent on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set encoding=utf8
set clipboard=unnamedplus
syntax enable
syntax on
set t_Co=256
set cmdheight=2
set updatetime=50
set shortmess+=c

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd FileType javascriptreact setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType cc,cpp,h,c setlocal ts=2 sts=2 sw=2

