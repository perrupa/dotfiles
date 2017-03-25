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
nnoremap gt :tabnext<cr>
nnoremap gT :tabprevious<cr>
" Rename tabs
nnoremap g, :TabooRename<space> 

" Splits
set splitbelow
set splitright

" FZF
nnoremap <C-p> :FZF<cr>
nnoremap <C-b> :FZFBuffers<cr>
nnoremap <C-f> :FZFLines<cr>

" EasyMotion
" https://github.com/easymotion/vim-easymotion#n-character-search-motion
nmap <leader>f <Plug>(easymotion-overwin-f)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" Git Aliases
command! Greview :Git! diff --staged
nnoremap <Leader>gs :Gstatus<cr>   " Status
nnoremap <Leader>ga :Gwrite<cr>    " Add
nnoremap <Leader>gc :Gcommit<cr>   " Commit
nnoremap <Leader>gd :Gdiff<cr>     " Diff
nnoremap <Leader>gr :Greview<cr>   " Diff

" NERD Tree

nnoremap <Leader>kb :NERDTreeToggle<cr>
