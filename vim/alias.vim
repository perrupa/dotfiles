" Alias file

" Leader stuff
let mapleader = " "

" vimrc edits
nnoremap <leader>sv :source ~/.vimrc<CR>

" remap ; to :
noremap ; :

" wrapped line movement
nnoremap k gk
nnoremap j gj

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

" Ctrl-^ is very handy command in normal mode. Ctrl-^
" switches to "alternate file". When there is no "alternate file",
" I wanted Ctrl-^ to jump to next file in the list.
" Insert following commands into your vimrc, then
" Ctrl-^ will be enhanced so that when there is no alternate file
" but there is next file, it will jump to the next buffer.
" My remapping of <C-^>. If there is no alternate file, then switch to next file.
function! MySwitch()
  if expand('#')==""
    silent! bnext
  else
    exe "normal! \<c-^>"
  endif
endfu
map <C-^> :call MySwitch()<CR>
" noremap <Leader><Leader> :call MySwitch()<CR>
noremap <Leader><Leader> <C-^>
" Tabs
nnoremap gt :tabnext<CR>
nnoremap gT :tabprevious<CR>

" Searching
nnoremap <Leader>sW :execute ":Rg! " . expand("<cWORD>")<CR>
nnoremap <Leader>sw :execute ":Rg! " . expand("<cword>")<CR>
" vnoremap <Leader>s :execute ":Rg! " . expand("<cword>")<CR>

nmap // :nohlsearch<CR>
nnoremap <Leader>nhl :nohlsearch<CR>

nnoremap n nzz " Centers the cursor vertically after jumping to the next result
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

" vim-expand-region bindings
" map <CR>   <Plug>(expand_region_expand)
" map <S-CR> <Plug>(expand_region_shrink)


