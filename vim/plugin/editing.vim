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
vnoremap <Up> :m '<-2<CR>gv
vnoremap <Down> :m '>+1<CR>gv

" Don't automatically insert comments after single line comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal comments-=://
setlocal comments+=f://

" Tab completion from the top down
let g:SuperTabDefaultCompletionType = "<c-n>"

" Don't confirm when stripping whitespace
let g:strip_whitespace_confirm=0

" keep selection when reindenting
vnoremap > >gv
vnoremap < <gv

" Option + hjkl
" hjkl = ˙∆˚¬
nnoremap ˙ ^
nnoremap ¬ $
nnoremap ˚ {
nnoremap ∆ }

" word-wise jumping in insert mode
inoremap ˙ <C-o>b
inoremap ¬ <C-o>e

" Show trailing whitespace
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Search highlighting with bold + underline
highlight Search guibg=guifg guifg=guibg gui=bold,italic,underline,standout

" Wildfire Config
let g:wildfire_objects = ["iw", "iW", "i'", 'i"', "i>", "i)", "i]", "i}", "it", "ip"]

