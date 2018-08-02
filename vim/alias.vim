" Alias file

" Leader stuff
let mapleader = " "

" vimrc edits
nnoremap <leader>sv :source ~/.vimrc<cr>

" remap ; to :
noremap ; :

" wrapped line movement
nnoremap k gk
nnoremap j gj

" word-wise H & L
nnoremap H B
nnoremap L w

" Yank Consistency
nnoremap Y y$

" Buffers
nnoremap <C-w> :q<cr>
nnoremap <leader>bd :bd<cr>
" nnoremap <C-S-w> :bd<cr>
" nnoremap <C-s> :w<cr>
nnoremap <C-S-s> :wa<cr>
nnoremap <Leader>m :MaximizerToggle<CR>
nnoremap <C-\> :edit %:h<cr>

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
nnoremap gt :tabnext<cr>
nnoremap gT :tabprevious<cr>

" Searching
nnoremap <Leader>sW :execute ":Rg! " . expand("<cWORD>")<CR>
nnoremap <Leader>sw :execute ":Rg! " . expand("<cword>")<CR>
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
nnoremap <C-p> :FZF<cr>
nnoremap <C-b> :FZFBuffers<cr>
nnoremap <C-F> :Rg!<space>
nnoremap <C-t> :FZFBTags<cr>
nnoremap <C-S-t> :FZFTags<cr>
nnoremap <C-m> :FZFMarks<cr>

nnoremap ;f  :FZF<cr>
nnoremap ;<space>  :FZFBuffers<cr>
nnoremap ;b  :FZFBuffers<cr>
nnoremap ;t  :FZFBTags<cr>
nnoremap ;T  :FZFTags<cr>
nnoremap ;g  :Rg<cr>

nnoremap <leader>cs :FZFColors<cr>

" Registers
nnoremap <leader>@ :registers<cr>

" Git Aliases
command! Greview :Git! diff --staged
nnoremap <Leader>gs :Gstatus<cr>   " Status
nnoremap <Leader>ga :Gwrite<cr>    " Add
nnoremap <Leader>gc :Gcommit<cr>   " Commit
nnoremap <Leader>gd :Gdiff<cr>     " Diff
nnoremap <Leader>gr :Greview<cr>   " Diff

" NERD Tree
nnoremap <Leader>kb :NERDTreeToggle<cr>
nnoremap <Leader>kf :NERDTreeFind<cr>

" Comments
nnoremap <C-_> :Commentary<cr> " vim sees ctrl+/ as ctrl+_ for some reason
vnoremap <C-_> :Commentary<cr>gv " Comments out selection, keeping it selected

" Neovim terminal
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

