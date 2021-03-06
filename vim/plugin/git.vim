" Git Aliases
command! Greview :Git! diff --staged
nnoremap <Leader>gs :Gstatus<CR>   " Status
nnoremap <Leader>ga :Gwrite<CR>    " Add
nnoremap <Leader>gc :Gcommit<CR>   " Commit
nnoremap <Leader>gd :Gdiff<CR>     " Diff
nnoremap <Leader>gr :Greview<CR>   " Diff
nnoremap <Leader>gt :call OpenTig()<CR>

function! OpenTig()
  terminal tig
  normal A
endfu

" map <C-^> :call OpenTig()<CR>
