" Plugins
let g:ale_emit_conflict_warnings = 0

call plug#begin('~/.vim/bundle')
  " Vim UI
  Plug 'justinmk/vim-dirvish'
  Plug 'itchyny/lightline.vim'
  Plug 'mgee/lightline-bufferline'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'         " Focus Mode (Goyo)
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vimwiki/vimwiki'
  Plug 'voldikss/vim-floaterm'

  " Tmux integration
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'benmills/vimux'

  " Editing
  Plug 'terryma/vim-multiple-cursors'
  Plug 'mattn/emmet-vim'
  Plug 'terryma/vim-expand-region'
  Plug 'yssl/QFEnter'
  Plug 'icatalina/vim-case-change'
  Plug 'wellle/targets.vim'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'cohama/lexima.vim' " auto-close parens
  Plug 'AndrewRadev/splitjoin.vim'

  " File Management/Organization
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./intall.bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'yuki-ycino/fzf-preview.vim', { 'do': ':FzfPreviewInstall' }
  Plug 'justincampbell/vim-eighties' " Resizing vertical splits
  Plug 'kshenoy/vim-signature' " Shows vim-marks in the gutter
  Plug 'junegunn/vim-peekaboo' " Show registers (and contents) when using completion and macros
  Plug 'wsdjeg/vim-fetch' " Allows opening files at linenumber e.g. `main.js:13`
  Plug 'lambdalisue/fern.vim'

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
  Plug 'sheerun/vim-polyglot'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'

  " Misc
  Plug 'leafOfTree/vim-vue-plugin'
  Plug 'szw/vim-maximizer'
  Plug 'ntpeters/vim-better-whitespace' " highlight whitespace violations
  Plug 'Asheq/close-buffers.vim'

  " color schemes
  Plug 'gf3/molotov'
  Plug 'nanotech/jellybeans.vim'
  Plug 'ayu-theme/ayu-vim'

  " Snippets
  " Plug 'SirVer/ultisnips'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  " Plug 'honza/vim-snippets'
  " Plug 'perrupa/close-floating-windows.nvim'
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

" Prevent <C-F> remapping
let g:comfortable_motion_no_default_key_mappings = 1
