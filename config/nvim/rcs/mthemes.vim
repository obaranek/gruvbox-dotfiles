 set background=dark
"Gruvbox
let g:gruvbox_contrast_dark = 'soft'
if exists('+termguicolors')
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
 if has('termguicolors')
     set termguicolors
 endif

colorscheme gruvbox
