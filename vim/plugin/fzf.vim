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
