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

" Include word expanding with Wildfire
let g:wildfire_objects = ["iw", "i'", 'i"', "i)", "i]", "i}", "ip", "it"]
