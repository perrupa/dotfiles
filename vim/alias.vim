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

" Splits
set splitbelow
set splitright

" Ctrl+P
nnoremap <C-b> :CtrlPBuffer<cr>
