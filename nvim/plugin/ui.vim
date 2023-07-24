" Splits
set splitbelow
set splitright

set mouse=a
set scrolloff=5

" Show tabline for active buffer list
set showtabline=2

" Search highlighting with bold + underline
highlight Search guibg=guibg guifg=guifg gui=bold,italic,underline

" Selection
nnoremap <CR> <Plug>(expand_region_expand)
vnoremap <CR> <Plug>(expand_region_expand)

" +/- to expand/contract
vmap - <Plug>(expand_region_shrink)
vmap _ <Plug>(expand_region_shrink)
vmap + <Plug>(expand_region_expand)
vmap = <Plug>(expand_region_expand)

