" Use ripgrep
set grepprg=rg\ --vimgrep

set incsearch

" Searching under word
nnoremap <Leader>sw :FzfLua grep_cword <CR>
nnoremap <Leader>sW :FzfLua grep_cWORD <CR>

" Ctrl + F: the OG search mapping
nnoremap <C-f> :FzfLua grep <CR>

" S: results in Grepper
" nnoremap <Leader>Sw :Grepper -cword -noprompt<CR>
" nnoremap <Leader>SW :Grepper -cWORD -noprompt<CR>

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
