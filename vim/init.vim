set nocompatible
set hidden
filetype plugin indent on
set lisp " `-` doens't break words + more :)
set noswapfile
set t_Co=256
set lazyredraw
if (has("termguicolors"))
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
let &runtimepath.=',~/.config/nvim/bundle/ale'
filetype plugin on

" Dictionary
set dictionary=/usr/share/dict/words

" Session Management
" managed through tpope/vim-obsession and ./vim/plugin/sessions.vim

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
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/alias.vim

" Theme
colorscheme OceanicNext
set showtabline=2

set omnifunc=syntaxcomplete#Complete
autocmd BufEnter * EnableStripWhitespaceOnSave

