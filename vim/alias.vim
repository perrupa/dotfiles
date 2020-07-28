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
nnoremap <leader>n :enew<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>BD :bdelete!<CR>
nnoremap <C-s> :wa<CR>
nnoremap <Leader>m :MaximizerToggle<CR>
nnoremap <Leader>z :MaximizerToggle<CR>
nnoremap <C-\> :edit %:h<CR>

function! PreviousBuffer()
  if expand('#')==""
    silent! bnext
  else
    exe "normal! \<c-^>"
  endif
endfu

noremap <Leader><Leader> :call PreviousBuffer()<CR>

" Tab navigation
nnoremap gt :tabnext<CR>
nnoremap gT :tabprevious<CR>

" Searching
nnoremap <Leader>sW :execute ":Rg! " . expand("<cWORD>")<CR>
nnoremap <Leader>sw :execute ":Rg! " . expand("<cword>")<CR>
" nnoremap <Leader>sf :execute ":FZFFiles " . expand("<cword>")<CR>
" vnoremap <Leader>s :execute ":Rg! " . expand("<cword>")<CR>

nmap // :nohlsearch<CR>

" Centers the cursor vertically after jumping to the next result
nnoremap n nzz
nnoremap N Nzz

" Registers
nnoremap <leader>@ :registers<CR>

" Comments
" vim sees ctrl+/ as ctrl+_ for some reason
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>gv " Comments out selection, keeping it selected
