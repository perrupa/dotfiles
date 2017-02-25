" Alias file

" Leader stuff
let mapleader = ","

" vimrc edits
nnoremap <leader>sv :source ~/.vim/vimrc<cr>

" remap ; to :
noremap ; :

" wrapped line movement 
nnoremap k gk
nnoremap j gj

" Arrow keys
nnoremap <Up> :m .-2<cr>
nnoremap <Down> ddp

" Buffers
nnoremap bn :bnext<cr>
nnoremap bp :bprevious<cr>

" Tabs
nnoremap gt :tabNext<cr>
nnoremap gT :tabPrev<cr>
" Rename tabs
nnoremap g, :TabooRename<space> 

" Splits
set splitbelow
set splitright

" Ctrl+P
nnoremap <C-b> :CtrlPBuffer<cr>

" EasyMotion
" https://github.com/easymotion/vim-easymotion#n-character-search-motion
nmap <leader>f <Plug>(easymotion-overwin-f)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Git Aliases
nnoremap gs :Gstatus<cr> " Status
nnoremap ga :Gwrite<cr>  " Add
nnoremap gc :Gcommit<cr> " Commit
nnoremap gd :Gdiff<cr>   " Diff

