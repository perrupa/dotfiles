" Terminal settings
set t_Co=256
set lazyredraw
set termguicolors

" Theme
" colorscheme molotov
colorscheme jellybeans

set mouse=a

" Show tabline for active buffer list
set showtabline=2

" Wide tree for deep repos
let g:NERDTreeWinSize=50

" Panel Sizing via vim-eighties
let g:eighties_enabled = 1
let g:eighties_minimum_width = 60
let g:eighties_extra_width = 5 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
let g:eighties_bufname_additional_patterns = ['fugitiveblame']
