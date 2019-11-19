" Plugins
let g:ale_emit_conflict_warnings = 0

call plug#begin('~/.vim/bundle')
  " Vim UI
  Plug 'scrooloose/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'mgee/lightline-bufferline'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'         " Focus Mode (Goyo)
  Plug 'yuttie/comfortable-motion.vim'
  Plug 'junegunn/rainbow_parentheses.vim'

  " Tmux integration
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'benmills/vimux'

  " Editing
  Plug 'scrooloose/nerdcommenter'
  Plug 'gcmt/wildfire.vim'
  Plug 'jceb/vim-orgmode'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'mattn/emmet-vim'
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-line'
  Plug 'terryma/vim-expand-region'
  Plug 'yssl/QFEnter'
  Plug 'icatalina/vim-case-change'
  Plug 'jiangmiao/auto-pairs'
  Plug 'wellle/targets.vim'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'prettier/vim-prettier', {
    \    'do': 'yarn install',
    \    'branch': 'release/1.x',
    \    'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql']
    \  }
  let g:prettier#config#config_precedence = 'file-override'



  " File Management/Organization
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./intall.bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'justincampbell/vim-eighties'
  Plug 'kshenoy/vim-signature'

  " Completion
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'othree/csscomplete.vim'
  Plug 'wellle/tmux-complete.vim'
  Plug 'Shougo/neco-vim'
  Plug 'neoclide/coc-neco'

  " tpope time
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-scriptease'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-unimpaired'

  " Syntaxes
  Plug 'vim-ruby/vim-ruby'
  Plug 'sheerun/vim-polyglot'
  Plug 'roxma/python-support.nvim'
  Plug 'neomake/neomake'
  Plug 'sorin-ionescu/python.vim', { 'for': 'python' }
  Plug 'othree/html5.vim'
  Plug 'jparise/vim-graphql'
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
  Plug 'elmcast/elm-vim', { 'for': 'elm' }
  Plug 'godlygeek/tabular'
  Plug 'reedes/vim-pencil'
  Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescript.tsx']}

  " Misc
  Plug 'janko-m/vim-test'
  Plug 'szw/vim-maximizer'
  Plug 'w0rp/ale'
  Plug 'wincent/terminus'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'junegunn/vim-peekaboo'
  Plug 'Asheq/close-buffers.vim'
  Plug 'dimonomid/auto-pairs-gentle'

  " color schemes
  " Plug 'flazz/vim-colorschemes'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'dracula/vim'
  Plug 'szw/seoul256.vim'
  Plug 'lifepillar/vim-gruvbox8'
  Plug 'nightsense/carbonized'
  Plug 'larssmit/vim-getafe'
  Plug 'sickill/vim-monokai'
  Plug 'gf3/molotov'
  Plug 'morhetz/gruvbox'

  " Vim Objects

  " Snippets
  " Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
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

" Don't GoldenRatio NERDtree/non-modifiables
let g:golden_ratio_exclude_nonmodifiable = 1

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

" Prevent <C-F> remapping
let g:comfortable_motion_no_default_key_mappings = 1
