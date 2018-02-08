" FZF Config
" https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2#.7tq6fyynl

" prefixes all FZF commands; Buffers -> FZFBuffers
let g:fzf_command_prefix = 'FZF'

" Open in same window/buffer
let g:fzf_buffers_jump = 1

" grep -> rg
set grepprg=rg\ --vimgrep

" https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2#.7tq6fyynl
command! -bang -nargs=* -complete=dir Rg call Rg(<q-args>)

function! Rg(args)
  let l:escaped_args = escape(a:args, '|#%')
  call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings '
        \ .'--ignore-case --hidden --glob "!{.git,node_modules,tags}" --color=always "'.l:escaped_args.'"| tr -d "\017"',
        \ 0, 0)
endfunction

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!{.git,node_modules,tags}" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0
  \ )

" Returns the word under cursor.
function! GetWordUnderCursor()
    let isOnKeyword = matchstr(getline('.'), '\%'.col('.').'c.') =~# '\k'
    if isOnKeyword
        return expand("<cword>")
    else
        return ""
    endif
endfunction

" Use Ag with word under cursor
function! SearchProject()
    call CmdLine("Ag " . GetWordUnderCursor())
endfunction

" Returns the visual selection
function! VisualSelection()
    try
        let a_save = @a
        silent normal! gv"ay
        return @a
    finally
        let @a = a_save
    endtry
endfunction

" Search the project for the visual selection
function! SearchProjectVisual()
    call CmdLine("Ag " . VisualSelection())
endfunction

nnoremap <leader>s :call SearchProject()<CR>
vnoremap <leader>s :call SearchProjectVisual()<CR>
