" Terminal settings
set t_Co=256
set lazyredraw
if (has("termguicolors"))
  set termguicolors
endif
set mouse=a

" Theme
colorscheme OceanicNext
set showtabline=2

" Hide vim's weird ~s
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

" Panel Sizing via vim-eighties
let g:eighties_enabled = 1
let g:eighties_minimum_width = 60
let g:eighties_extra_width = 5 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
let g:eighties_bufname_additional_patterns = []
