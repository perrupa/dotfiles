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
" nnoremap <C-S-w> :bd<CR>
" nnoremap <C-s> :w<CR>
nnoremap <C-S-s> :wa<CR>
nnoremap <Leader>m :MaximizerToggle<CR>
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

" FZF
nnoremap <C-p> :FZF<CR>
nnoremap <C-b> :FZFBuffers<CR>
nnoremap <C-F> :Rg!<space>
nnoremap <C-t> :FZFBTags<CR>
nnoremap <C-S-t> :FZFTags<CR>
nnoremap <C-m> :FZFMarks<CR>

nnoremap ;f  :FZF<CR>
nnoremap ;<space>  :FZFBuffers<CR>
nnoremap ;b  :FZFBuffers<CR>
nnoremap ;t  :FZFBTags<CR>
nnoremap ;T  :FZFTags<CR>
nnoremap ;g  :Rg<CR>

nnoremap <leader>cs :FZFColors<CR>

" Registers
nnoremap <leader>@ :registers<CR>

" Git Aliases
command! Greview :Git! diff --staged
nnoremap <Leader>gs :Gstatus<CR>   " Status
nnoremap <Leader>ga :Gwrite<CR>    " Add
nnoremap <Leader>gc :Gcommit<CR>   " Commit
nnoremap <Leader>gd :Gdiff<CR>     " Diff
nnoremap <Leader>gr :Greview<CR>   " Diff

" NERD Tree
nnoremap <Leader>kb :NERDTreeToggle<CR>
nnoremap <Leader>kf :NERDTreeFind<CR>

" Comments
nnoremap <C-_> :Commentary<CR> " vim sees ctrl+/ as ctrl+_ for some reason
vnoremap <C-_> :Commentary<CR>gv " Comments out selection, keeping it selected

" vim-expand-region bindings
map <CR>   <Plug>(expand_region_expand)
map <S-CR> <Plug>(expand_region_shrink)


" Neovim terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

