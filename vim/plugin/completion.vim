function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Goto commands
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function SetupCoc()
  call coc#util#install()
  execute 'CocInstall coc-java'
  execute 'CocInstall coc-css coc-json coc-html'
  execute 'CocInstall coc-snippets'
  execute 'CocInstall coc-yaml'
  execute 'CocInstall coc-tsserver'
  " CocInstall coc-css coc-json coc-html coc-snippets coc-yaml coc-tsserver
endfunction

" Use <C-j/k> to jump to forward/backward through completion areas
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

