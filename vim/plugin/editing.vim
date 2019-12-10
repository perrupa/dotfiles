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

" Yanking in visual mode, stays in visual mode
" vnoremap y ygv

" This causes the left and right arrow keys, as well as h and l, to wrap when used at
" beginning or end of lines. (  < > are the cursor keys used in normal and visual mode,
" and [ ] are the cursor keys in insert mode).
set whichwrap+=<,>,h,l,[,]

" Don't automatically insert comments after single line comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal comments-=://
setlocal comments+=f://

" Don't confirm when stripping whitespace on save
let g:strip_whitespace_confirm=0

" keep selection when reindenting
vnoremap > >gv
vnoremap < <gv

" Option + hjkl
" hjkl = ˙∆˚¬
noremap ˙ ^
noremap ¬ $
noremap ˚ {
noremap ∆ }

" word-wise jumping in insert mode
inoremap ˙ <C-o>b
inoremap ¬ <C-o>e
inoremap ˚ <C-o><up>
inoremap ∆ <C-o><down>

" Show trailing whitespace
set listchars=tab:›\ ,trail:·,eol:¬,nbsp:_,extends:…,precedes:…
set foldlevelstart=99
set fillchars=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Search highlighting with bold + underline
highlight Search guibg=guibg guifg=guifg gui=bold,italic,underline

" Wildfire Config
let g:wildfire_objects = ["iw", "iW", "i'", 'i"', "i>", "i)", "i]", "i}", "it", "ip"]

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir
