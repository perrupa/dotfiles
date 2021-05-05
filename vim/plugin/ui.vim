" Terminal settings
set t_Co=256
set lazyredraw
set termguicolors

" Splits
set splitbelow
set splitright

" Theme
let ayucolor="mirage"
colorscheme ayu

set mouse=a

" Show tabline for active buffer list
set showtabline=2

" Panel Sizing via vim-eighties
let g:eighties_enabled = 1
let g:eighties_minimum_width = 60
let g:eighties_extra_width = 5 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
let g:eighties_bufname_additional_patterns = ['fugitiveblame']

" Search highlighting with bold + underline
highlight Search guibg=guibg guifg=guifg gui=bold,italic,underline
