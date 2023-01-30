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
set scrolloff=5

" Show tabline for active buffer list
set showtabline=2

" Search highlighting with bold + underline
highlight Search guibg=guibg guifg=guifg gui=bold,italic,underline

" Lightline theme
let g:lightline = {'colorscheme': 'ayu'}

" Hide the command bars
" lua vim.o.ls = 0
" lua vim.o.ch = 0

" Vim split resizing via 'beauwilliams/focus.nvim'
" lua require("focus").setup()

" File tree (Fern.vim)
let g:fern#renderer = "nerdfont"

