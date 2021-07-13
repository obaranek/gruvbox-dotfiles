let mapleader = " "

inoremap jk <Esc>
inoremap kj <Esc>

" window-navigation
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>wj :wincmd j<CR>
nnoremap <leader>wk :wincmd k<CR>
nnoremap <leader>wl :wincmd l<CR>

" Undo tree
nnoremap <leader>u :UndotreeToggle<CR>

" Nerd tree
map <leader>op :NERDTreeToggle<CR>


" Copy to clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p

" nerd-commentary
nmap gc <Plug>NERDCommenterToggle
vmap gc <Plug>NERDCommenterToggle

" yank
nnoremap <leader>y "+y
vnoremap <leader>y "+y

"switching buffers
map <leader>bn :bnext<CR>
map <leader>bp :bprev<CR>
