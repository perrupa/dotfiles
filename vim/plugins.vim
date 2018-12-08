" Plugins
let g:ale_emit_conflict_warnings = 0

call plug#begin('~/.vim/bundle')
  Plug 'scrooloose/nerdtree'

  " tpope time
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-obsession'

  Plug 'vim-ruby/vim-ruby'
  Plug 'airblade/vim-gitgutter'
  Plug 'itchyny/lightline.vim'
  Plug 'morhetz/gruvbox'
  Plug 'scrooloose/nerdcommenter'
  Plug 'sickill/vim-monokai'
  Plug 'gf3/molotov'
  Plug 'sheerun/vim-polyglot'
  Plug 'mxw/vim-jsx'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'mattn/emmet-vim'
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-line'
  Plug 'terryma/vim-expand-region'
  Plug 'Yggdroot/indentLine'

  " Tmux integration
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'benmills/vimux'
  Plug 'janko-m/vim-test'


  " Quickfix wizardy
  Plug 'yssl/QFEnter'

  " File Management/Organization
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./intall.bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'roman/golden-ratio'
  Plug 'gcmt/taboo.vim'
  Plug 'kshenoy/vim-signature'

  " Completion
  Plug 'autozimu/LanguageClient-neovim', {
  \   'branch': 'next',
  \   'do': 'bash install.sh',
  \ }
  Plug 'Shougo/deoplete.nvim'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'othree/csscomplete.vim'
  Plug 'wellle/tmux-complete.vim'

  " Syntaxes
  Plug 'roxma/python-support.nvim'
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
  Plug 'prettier/vim-prettier', {
    \    'do': 'yarn install',
    \    'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql']
    \  }

  " Misc
  Plug 'szw/vim-maximizer'
  Plug 'w0rp/ale'
  Plug 'wincent/terminus'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'junegunn/vim-peekaboo'
  Plug 'Asheq/close-buffers.vim'

  " color schemes
  Plug 'altercation/vim-colors-solarized'
  Plug 'nightsense/vim-crunchbang'
  Plug 'jakwings/vim-colors'
  Plug 'flazz/vim-colorschemes'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'dracula/vim'
  Plug 'szw/seoul256.vim'

  " Vim Objects
  Plug 'jiangmiao/auto-pairs'
  Plug 'wellle/targets.vim'
  Plug 'michaeljsmith/vim-indent-object'

  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'
call plug#end()

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


" Include word expanding with `terryma/vim-expand-region`
" Default settings. (NOTE: Remove comments in dictionary before sourcing)
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
      \ }

