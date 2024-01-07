" Buffers
nnoremap H :bprev<CR>
nnoremap L :bnext<CR>
nnoremap <C-w> :q<CR>
nnoremap <leader>n :enew<CR>
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>BD :bdelete!<CR>
nnoremap <C-s> :wa<CR>
nnoremap <C-\> :edit %:h<CR>

function! PreviousBuffer()
  if expand('#')==""
    silent! bnext
  else
    exe "normal! \<c-^>"
  endif
endfu

noremap <Leader><Leader> :call PreviousBuffer()<CR>

" File Tree
" nnoremap <Leader>e :NvimTreeFindFileToggle<CR>

" Maximize current buffer
nnoremap <Leader>m :MaximizerToggle<CR>
nnoremap <Leader>z :MaximizerToggle<CR>

" Comments
" vim sees ctrl+/ as ctrl+_ for some reason
nnoremap <C-_> :Commentary<CR>
" keep visual selection when commenting
vnoremap <C-_> :Commentary<CR>gv

" Yank current filename
command! Yankfname let @* = expand("%")
nnoremap <C-G> :Yankfname<CR> <C-G>
