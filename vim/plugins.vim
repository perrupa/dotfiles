" Plugins

let g:ale_emit_conflict_warnings = 0

call plug#begin('~/.vim/bundle')
  Plug 'scrooloose/nerdtree'

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
  Plug 'gcmt/wildfire.vim'

  " FZF
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./intall.bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'kshenoy/vim-signature'

  " Autosave stuff
  Plug 'tpope/vim-obsession'

  " Syntaxes
  Plug 'neomake/neomake'
  Plug 'sorin-ionescu/python.vim', { 'for': 'python' }
  Plug 'othree/html5.vim'
  Plug 'jparise/vim-graphql'
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
  Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
  Plug 'mtscout6/vim-cjsx', { 'for': 'jsx' }
  Plug 'elmcast/elm-vim', { 'for': 'elm' }
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

  " Misc
  Plug 'Shougo/vimshell.vim'
  Plug 'craigemery/vim-autotag'
  Plug 'gcmt/taboo.vim'
  Plug 'szw/vim-maximizer'
  Plug 'w0rp/ale'
  Plug 'wincent/terminus'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'junegunn/vim-peekaboo'

  " color schemes
  Plug 'tylerball/vim-hypertint'
  Plug 'nightsense/vim-crunchbang'
  Plug 'jakwings/vim-colors'
  Plug 'flazz/vim-colorschemes'

  " Vim Objects
  Plug 'jiangmiao/auto-pairs'
  Plug 'wellle/targets.vim'
  Plug 'michaeljsmith/vim-indent-object'

  " Snippets
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'

  " Completions
  Plug 'yssl/QFEnter'
  Plug 'ervandew/supertab'
  Plug 'benmills/vimux'
call plug#end()

" GoldenRatio off by default
let g:loaded_golden_ratio = 0

" Use ripgrep
set grepprg=rg\ --vimgrep

" enable AutoSave on Vim startup
let g:auto_save = 1


augroup rainbow_parenthesis_config
  autocmd!
  nnoremap <leader>rp :RainbowParentheses!!<CR>
  let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
  let g:rainbow#blacklist = ['#F4CF86', '#FFFFFF']
augroup END

" Lang tweaks
let g:ruby_indent_assignment_style = 'variable'
