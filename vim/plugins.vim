" Plugins 

call plug#begin('~/.vim/bundle')
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  " tpope time
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-commentary'

  Plug 'vim-ruby/vim-ruby'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'edkolev/tmuxline.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'vim-syntastic/syntastic'
  Plug 'roman/golden-ratio'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'scrooloose/nerdcommenter'
  Plug 'sickill/vim-monokai'
  Plug 'sheerun/vim-polyglot'
  Plug 'mxw/vim-jsx'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-repeat'
  Plug 'wesQ3/vim-windowswap'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'mattn/emmet-vim'
  " FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./intall.bin' }
  Plug 'junegunn/fzf.vim'

  " Autosave stuff
  Plug '907th/vim-auto-save'
  Plug 'tpope/vim-obsession'

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

  Plug 'Shougo/vimshell.vim'
  Plug 'craigemery/vim-autotag'
  Plug 'gcmt/taboo.vim'
  Plug 'szw/vim-maximizer'

  " color schemes
  Plug 'tylerball/vim-hypertint'
  Plug 'chriskempson/base16-vim'

  " Vim Objects
  Plug 'wellle/targets.vim'
  Plug 'michaeljsmith/vim-indent-object'

  "Completion
  Plug 'yssl/QFEnter' 
  Plug 'Valloric/YouCompleteMe'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'
call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_left_sep=''
" let g:airline_right_sep=''

" GoldenRatio off by default
let g:loaded_golden_ratio = 0

" Use ripgrep
set grepprg=rg\ --vimgrep

augroup rainbow_parenthesis_config
  autocmd!
  nnoremap <leader>rp :RainbowParentheses!!<CR>
  let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
  let g:rainbow#blacklist = ['#F4CF86', '#FFFFFF']
augroup END

" Lang tweaks
let g:ruby_indent_assignment_style = 'variable'
