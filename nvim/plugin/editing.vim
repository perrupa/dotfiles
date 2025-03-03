syntax on
set number
set encoding=utf-8
set backspace=indent,eol,start
set wildmenu
set lisp " `-` doens't break words + more :)
set noswapfile

" Detect and show filechanges on open buffers
set autoread
set autowrite

" Vimwiki settings
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Share OSX's clipboard
set clipboard=unnamed

" Yank current filename
command! Yankfname let @* = expand("%")
nnoremap <C-G> :Yankfname<CR> <C-G>

" Highlight current line (only active window)
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
set cursorline

" Indentation
set smartindent
filetype plugin indent on
set expandtab ts=2 shiftwidth=2 softtabstop=2

" Yank Consistency
nnoremap Y y$

" Arrow keys
nnoremap <Up> :m .-2<cr>
nnoremap <Down> :m .+1<cr>
nnoremap <Left> <<
nnoremap <Right> >>

" Visual Arrow keys
vnoremap <Left> <gv
vnoremap <Right> >gv
vnoremap <Up> :m '<-2<CR>gv
vnoremap <Down> :m '>+1<CR>gv

" wrapped line movement
noremap k gk
noremap j gj

" This causes the left and right arrow keys, as well as h and l, to wrap when used at
" beginning or end of lines. (  < > are the cursor keys used in normal and visual mode,
" and [ ] are the cursor keys in insert mode).
set whichwrap+=<,>,h,l,[,]

" Don't automatically insert comments after single line comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal comments-=://
setlocal comments+=f://

" Don't confirm when stripping whitespace on save
autocmd BufEnter * EnableStripWhitespaceOnSave
let g:strip_whitespace_confirm=0

" keep selection when reindenting
vnoremap > >gv
vnoremap < <gv

" Option + hjkl
" hjkl = ˙∆˚¬
noremap ˙ B
noremap ¬ E
noremap ˚ {
noremap ∆ }

" word-wise jumping in insert mode
inoremap ˙ <C-o>b
inoremap ¬ <C-o>e
inoremap ˚ <C-o><up>
inoremap ∆ <C-o><down>

" Bad habits...
inoremap <C-c> <Esc>
nnoremap <C-c> <Esc>

" Show trailing whitespace
set listchars=tab:›\ ,trail:·,eol:¬,nbsp:_,extends:…,precedes:…
set foldlevelstart=99
set fillchars=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Selection
nnoremap <CR> <Plug>(expand_region_expand)
vnoremap <CR> <Plug>(expand_region_expand)

" +/- to expand/contract
vmap - <Plug>(expand_region_shrink)
vmap _ <Plug>(expand_region_shrink)
vmap + <Plug>(expand_region_expand)
vmap = <Plug>(expand_region_expand)

" Include word expanding with `terryma/vim-expand-region`
" Default settings.
let g:expand_region_text_objects = {
    \ 'iw'  :0,
    \ 'iW'  :0,
    \ 'i"'  :0,
    \ 'i''' :0,
    \ 'i]'  :1,
    \ 'ib'  :1,
    \ 'iB'  :1,
    \ 'il'  :0,
    \ 'ip'  :0,
    \ 'if'  :0,
    \ }

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

" Quickfix list commands
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
nnoremap cn :cnext<CR>
nnoremap cp :cprevious<CR>

augroup QuickFix
  au FileType qf map <buffer> <CR> <CR>
augroup END

