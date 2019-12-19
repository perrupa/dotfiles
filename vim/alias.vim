" Alias file

" Leader stuff
let mapleader = " "

" Sourcing files/vimrc
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>sf :source <C-r>%<CR>

" remap ; to :
noremap ; :

" wrapped line movement
noremap k gk
noremap j gj

" word-wise H & L
nnoremap H B
nnoremap L E

" Yank Consistency
nnoremap Y y$

" Buffers
nnoremap <C-w> :q<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>BD :bdelete!<CR>
nnoremap <C-s> :wa<CR>
nnoremap <Leader>m :MaximizerToggle<CR>
nnoremap <Leader>z :MaximizerToggle<CR>
nnoremap <C-\> :edit %:h<CR>

function! MySwitch()
  if expand('#')==""
    silent! bnext
  else
    exe "normal! \<c-^>"
  endif
endfu

noremap <Leader><Leader> :call MySwitch()<CR>

" Tab navigation
nnoremap gt :tabnext<CR>
nnoremap gT :tabprevious<CR>

" Searching
nnoremap <Leader>sW :execute ":Rg! " . expand("<cWORD>")<CR>
nnoremap <Leader>sw :execute ":Rg! " . expand("<cword>")<CR>
" vnoremap <Leader>s :execute ":Rg! " . expand("<cword>")<CR>

nmap // :nohlsearch<CR>
nnoremap <Leader>nhl :nohlsearch<CR>

" Centers the cursor vertically after jumping to the next result
nnoremap n nzz
nnoremap N Nzz

" Rename tabs
nnoremap g, :TabooRename<space>

nnoremap grt :GoldenRatioToggle<CR>

" Splits
set splitbelow
set splitright

" Registers
nnoremap <leader>@ :registers<CR>

" NERD Tree
nnoremap <Leader>kb :NERDTreeToggle<CR>
nnoremap <Leader>kf :NERDTreeFind<CR>

" Comments
nnoremap <C-_> :Commentary<CR> " vim sees ctrl+/ as ctrl+_ for some reason
vnoremap <C-_> :Commentary<CR>gv " Comments out selection, keeping it selected
