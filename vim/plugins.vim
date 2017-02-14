" Plugins 

call plug#begin('~/.vim/bundle')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  " tpope time
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'

  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kchmck/vim-coffee-script'
  Plug 'vim-syntastic/syntastic'
  Plug 'roman/golden-ratio'
  Plug 'vim-ctrlspace/vim-ctrlspace'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'w0rp/ale'
  Plug 'scrooloose/nerdcommenter'
  Plug 'sickill/vim-monokai'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'mxw/vim-jsx'

  " Syntaxes
  Plug 'neomake/neomake'
  Plug 'sorin-ionescu/python.vim', { 'for': 'python' }
  Plug 'othree/html5.vim'
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
  Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
  Plug 'mtscout6/vim-cjsx', { 'for': 'jsx' }
  Plug 'elmcast/elm-vim', { 'for': 'elm' }

  " color schemes
  Plug 'tylerball/vim-hypertint'
  Plug 'chriskempson/base16-vim'

call plug#end()


" Ctrl + P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

" ctrlp ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" CtrlSpace
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

