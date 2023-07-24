set lisp " `-` doens't break words + more :)

" Fast jumps
  " Option + hjkl (˙∆˚¬)
  noremap ˙ B
  noremap ¬ E
  noremap ˚ {
  noremap ∆ }
  
  " word-wise jumping in insert mode
  inoremap ˙ <C-o>b
  inoremap ¬ <C-o>e
  inoremap ˚ <C-o><up>
  inoremap ∆ <C-o><down>

" Repurpose the Arrow keys
  nnoremap <Up> :m .-2<cr>
  nnoremap <Down> :m .+1<cr>
  nnoremap <Left> <<
  nnoremap <Right> >>
  vnoremap <Left> <gv
  vnoremap <Right> >gv
  vnoremap <Up> :m '<-2<CR>gv
  vnoremap <Down> :m '>+1<CR>gv


" Highlight current line (only active window)
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
set cursorline

" Enter to quick-select
nnoremap <CR> <Plug>(expand_region_expand)
vnoremap <CR> <Plug>(expand_region_expand)

" +/- to expand/contract
vmap - <Plug>(expand_region_shrink)
vmap _ <Plug>(expand_region_shrink)
vmap + <Plug>(expand_region_expand)
vmap = <Plug>(expand_region_expand)

