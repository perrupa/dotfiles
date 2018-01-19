" Don't automatically insert comments after single line comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal comments-=://
setlocal comments+=f://

" keep selection when reindenting
vnoremap > >gv
vnoremap < <gv


" Show trailing whitespace
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Fix deoplete vs multiple cursors issue by disabling deoplete when in use
func! Multiple_cursors_before()
    call deoplete#init#_disable()
endfunc

func! Multiple_cursors_after()
    call deoplete#init#_enable()
endfunc

