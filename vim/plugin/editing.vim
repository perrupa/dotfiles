syntax on
set cursorline
set number
set encoding=utf-8
set backspace=indent,eol,start
set wildmenu

" Arrow keys
nnoremap <Up> :m .-2<cr>
nnoremap <Down> ddp
nnoremap <Left> <<
nnoremap <Right> >>

" Visual Arrow keys
vnoremap <Left> <gv
vnoremap <Right> >gv
vnoremap <Up> :m .-2<CR>gv
vnoremap <Down> :m .+2<CR>gv

" Don't automatically insert comments after single line comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal comments-=://
setlocal comments+=f://

" Tab completion from the top down
let g:SuperTabDefaultCompletionType = "<c-n>"

" keep selection when reindenting
vnoremap > >gv
vnoremap < <gv

" Moving by word
" Option+h
nnoremap ˙ b
" Option+l
nnoremap ¬ w

" Show trailing whitespace
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Include word expanding with Wildfire
let g:wildfire_objects = ["iw", "i'", 'i"', "i)", "i]", "i}", "ip", "it"]
