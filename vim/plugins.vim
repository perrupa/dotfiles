" Plugins
let g:ale_emit_conflict_warnings = 0

call plug#begin('~/.vim/bundle')
  " Vim UI
  Plug 'scrooloose/nerdtree'
  Plug 'itchyny/lightline.vim'
  Plug 'mgee/lightline-bufferline'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'         " Focus Mode (Goyo)
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'ryanoasis/vim-devicons'

  " Tmux integration
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'benmills/vimux'

  " Editing
  Plug 'scrooloose/nerdcommenter'
  " Plug 'gcmt/wildfire.vim'
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
  Plug 'yuki-ycino/fzf-preview.vim'
  Plug 'justincampbell/vim-eighties' " Resizing vertical splits
  Plug 'kshenoy/vim-signature' " Shows vim-marks in the gutter
  Plug 'junegunn/vim-peekaboo' " Show registers (and contents) when using completion and macros

  " Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': './install.sh'}
  " Plug 'othree/csscomplete.vim'
  " Plug 'wellle/tmux-complete.vim'

  " tpope time
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-obsession'

  " Syntaxes
  Plug 'sheerun/vim-polyglot'

  " Misc
  Plug 'szw/vim-maximizer'
  Plug 'ntpeters/vim-better-whitespace' " highlight whitespace violations
  Plug 'Asheq/close-buffers.vim'

  " color schemes
  Plug 'gf3/molotov'


  " Snippets
  " Plug 'SirVer/ultisnips'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/neosnippet.vim'
  " Plug 'honza/vim-snippets'
  " Plug 'perrupa/close-floating-windows.nvim'
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

" Prevent <C-F> remapping
let g:comfortable_motion_no_default_key_mappings = 1
