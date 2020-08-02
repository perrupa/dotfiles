set incsearch

" Searching under word
" s: results in FZF
nnoremap <Leader>sw :execute ":Rg! " . expand("<cword>")<CR>
nnoremap <Leader>sW :execute ":Rg! " . expand("<cWORD>")<CR>

" S: results in Grepper
nnoremap <Leader>Sw :Grepper -cword -noprompt<CR>
nnoremap <Leader>SW :Grepper -cWORD -noprompt<CR>
" nnoremap <Leader>sf :execute ":FZFFiles " . expand("<cword>")<CR>
" vnoremap <Leader>s :execute ":Rg! " . expand("<cword>")<CR>

" Quick-toggle search highlighting
nmap // :nohlsearch<CR>

" Centers the cursor vertically after jumping to the next result
nnoremap n nzz
nnoremap N Nzz

" Grepper (vim-grepper)
runtime autoload/grepper.vim
let g:grepper = {}
let g:grepper.tools = ["rg"]
let g:grepper.jump = 1
nnoremap <Leader>/ :GrepperRg<Space>
xmap gs <Plug>(GrepperOperator)
