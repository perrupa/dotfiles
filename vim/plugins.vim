" Plugins
call plug#begin('~/.vim/bundle')
  " Vim UI
  Plug 'justinmk/vim-dirvish'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'         " Focus Mode (Goyo)
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'ryanoasis/vim-devicons'
  " Plug 'vimwiki/vimwiki'
  Plug 'voldikss/vim-floaterm'

  " Tmux integration
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'benmills/vimux'

  " Editing
  Plug 'mg979/vim-visual-multi'
  Plug 'mattn/emmet-vim'
  Plug 'yssl/QFEnter' "Quickfix <CR> behavior
  Plug 'terryma/vim-expand-region'
  Plug 'icatalina/vim-case-change'
  Plug 'wellle/targets.vim'
  Plug 'cohama/lexima.vim' " auto-close parens
  Plug 'kana/vim-textobj-user'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'kana/vim-textobj-line'
  Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
  Plug 'blueyed/vim-diminactive'
  Plug 'editorconfig/editorconfig-vim'

  " File Management/Organization
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./intall.bin' }
  Plug 'junegunn/fzf.vim'
  " Plug 'beauwilliams/focus.nvim'

  Plug 'kshenoy/vim-signature' " Shows vim-marks in the gutter
  Plug 'junegunn/vim-peekaboo' " Show registers (and contents) when using completion and macros
  Plug 'wsdjeg/vim-fetch' " Allows opening files at linenumber e.g. `main.js:13`
  Plug 'lambdalisue/fern.vim' " Tree plugin
  Plug 'lambdalisue/nerdfont.vim'
  Plug 'lambdalisue/fern-renderer-nerdfont.vim'
  Plug 'folke/trouble.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'

  " Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': './install.sh'}

  " tpope time
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-obsession'

  " Syntaxes
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'sheerun/vim-polyglot'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'develop' }
  Plug 'jparise/vim-graphql'

  " Misc
  Plug 'szw/vim-maximizer'
  Plug 'ntpeters/vim-better-whitespace' " highlight whitespace violations
  Plug 'Asheq/close-buffers.vim'
  " Plug 'shopify/spin-hud'
  " Plug 'wellle/context.vim'

  " color schemes
  Plug 'gf3/molotov'
  Plug 'ayu-theme/ayu-vim'
  Plug 'rakr/vim-one'
  Plug 'rafi/awesome-vim-colorschemes'

  " Snippets
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  Plug 'honza/vim-snippets'
  Plug 'perrupa/hide-tildes.vim'
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
