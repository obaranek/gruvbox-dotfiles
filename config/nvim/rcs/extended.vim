let NERDTreeDirArrowExpandable=""
let NERDTreeDirArrowCollapsible=""
let NERDTreeChDirMode=2
let NERDTreeIgnore=['node_modules']
let NERDTreeMinimalUI=1
let NERDTreeMouseMode=3
let NERDTreeShowBookmarks=1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


nmap gc <Plug>NERDCommenterToggle
vmap gc <Plug>NERDCommenterToggle

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

lua <<EOF
require'nvim-treesitter.configs'.setup {
ensure_installed = { "c", "rust", "cpp", "css", "fish", "go", "html", "javascript", "haskell", "python", "rust", "typescript" },
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
