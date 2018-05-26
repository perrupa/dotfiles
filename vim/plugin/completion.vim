let g:deoplete#enable_at_startup = 1

" deoplete config
let g:deoplete#enable_at_startup = 1

if has("gui_running")
    inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
else
    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
endif

inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" UltiSnips config
" let g:UltiSnipsExpandTrigger="<C-Space>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


