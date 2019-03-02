set nocompatible
set hidden
filetype plugin indent on
set lisp " `-` doens't break words + more :)
set noswapfile
set t_Co=256
set lazyredraw
if has('nvim-0.1.5')        " True color in neovim wasn't added until 0.1.5
    set termguicolors
endif

" Wildignore
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*

" Share OSX's clipboard
set clipboard=unnamed

filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on

" Dictionary
set dictionary=/usr/share/dict/words

" Session Management
" ...?

" Indentation
filetype plugin indent on
set expandtab ts=2 shiftwidth=2 softtabstop=2

" Highlight curr line (only active window)
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END


set mouse=a
if has("mouse_sgr") && !has('nvim')
  set ttyfast
  set ttymouse=sgr
endif

set autoread
set autowrite

" Search
set incsearch

" Imports
source ~/.vim/plugins.vim
source ~/.vim/alias.vim

" Theme
set t_Co=256
set background=dark
let g:gruvbox_italic=1
colorscheme onedark
set showtabline=2

" let g:indentLine_char = '┆'
" let g:indentLine_first_char = '┆'
let g:indentLine_char = '.'
let g:indentLine_first_char = '.'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

set omnifunc=syntaxcomplete#Complete
autocmd BufEnter * EnableStripWhitespaceOnSave

