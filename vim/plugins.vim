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
  Plug 'tpope/vim-obsession'

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
  Plug 'sheerun/vim-polyglot'
  Plug 'mxw/vim-jsx'
  Plug 'rking/ag.vim'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-repeat'


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

  " color schemes
  Plug 'tylerball/vim-hypertint'
  Plug 'chriskempson/base16-vim'

  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'gcmt/taboo.vim'

  Plug 'michaeljsmith/vim-indent-object'
  Plug 'yssl/QFEnter' 
  Plug 'Valloric/YouCompleteMe'

call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

" Ctrl + P
set runtimepath^=~/.vim/bundle/ctrlp.vim
augroup ctrlp_config
  autocmd!
  let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
  let g:ctrlp_clear_cache_on_exit = 0 " Do not clear filenames cache, to improve CtrlP startup
  let g:ctrlp_lazy_update = 150 " Set delay to prevent extra search
  " let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' } " Use python fuzzy matcher for better performance
  let g:ctrlp_max_files = 0 " Set no file limit, we are building a big project
  let g:ctrlp_switch_buffer = 'Et' " Jump to tab AND buffer if already open
  let g:ctrlp_open_new_file = 'r' " Open newly created files in the current window
  let g:ctrlp_open_multiple_files = 'ij' " Open multiple files in hidden buffers, and jump to the first one
augroup END


" CtrlSpace
let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

" Silver Searcher
augroup ag_config
  autocmd!
  if executable("ag")
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m

    " Have the silver searcher ignore all the same things as wilgignore
    let b:ag_command = 'ag %s -i --nocolor --nogroup'

    for i in split(&wildignore, ",")
      let i = substitute(i, '\*/\(.*\)/\*', '\1', 'g')
      let b:ag_command = b:ag_command . ' --ignore "' . substitute(i, '\*/\(.*\)/\*', '\1', 'g') . '"'
    endfor

    let b:ag_command = b:ag_command . ' --hidden -g ""'
    let g:ctrlp_user_command = b:ag_command
  endif
augroup END


if executable("ag")
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m

  " Have the silver searcher ignore all the same things as wilgignore
  let b:ag_command = 'ag %s -i --nocolor --nogroup'

  for i in split(&wildignore, ",")
    let i = substitute(i, '\*/\(.*\)/\*', '\1', 'g')
    let b:ag_command = b:ag_command . ' --ignore "' . substitute(i, '\*/\(.*\)/\*', '\1', 'g') . '"'
  endfor

  let b:ag_command = b:ag_command . ' --hidden -g ""'
  let g:ctrlp_user_command = b:ag_command
endif

augroup rainbow_parenthesis_config
  autocmd!
  nnoremap <leader>rp :RainbowParentheses!!<CR>
  let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
  let g:rainbow#blacklist = ['#F4CF86', '#FFFFFF']
augroup END

