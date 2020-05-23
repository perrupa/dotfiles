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

" Panel Sizing via vim-eighties
let g:eighties_enabled = 1
let g:eighties_minimum_width = 60
let g:eighties_extra_width = 5 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
let g:eighties_bufname_additional_patterns = ['fugitiveblame']

let g:coc_explorer_global_presets = {
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'floating': {
\      'position': 'floating',
\   }
\ }

" Show current file in coc-explorer (toggle file tree)
nmap <space>e :CocCommand explorer --preset simplify<CR>
nnoremap <Leader>kb :CocCommand explorer --preset simplify<CR>
nnoremap <Leader>kf :CocCommand explorer --preset simplify<CR>

