" FZF Config

" Send FZF results to the quickfix list
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

" Select all results with <C-a>
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" prefixes all FZF commands; Buffers -> FZFBuffers
let g:fzf_command_prefix = 'FZF'

" Open in same window/buffer
let g:fzf_buffers_jump = 1

" grep -> rg
set grepprg=rg\ --vimgrep


" FZF Aliases
nnoremap <C-F> :Rg!<space>
nnoremap <leader>f :Rg! <Up><CR>

";" is the FZF leader
nnoremap ;F  :FZFFiletypes<CR>
nnoremap ;c  :FZFColors<CR>

" FzfPreview (yuki-ycino/fzf-preview.vim)
nnoremap ;f  :FzfPreviewDirectoryFiles<CR>
nnoremap ;b  :FzfPreviewAllBuffers<CR>
nnoremap ;l  :FzfPreviewLines<CR>
nnoremap ;m  :FzfPreviewMarks<CR>
nnoremap ;g  :FzfPreviewProjectGrep<CR>
nnoremap ;t  :FzfPreviewBufferTags<CR>
nnoremap <C-t> :FzfPreviewBufferTags<CR>


"****************************************
" Call FZF with Rg
"****************************************
" https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2#.7tq6fyynl
command! -bang -nargs=* -complete=dir Rg call Rg(<q-args>)

function! Rg(args)
  let l:escaped_args = escape(a:args, '|#%')
  call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings '
        \ .'--ignore-case --hidden --glob "!{.git,node_modules,tags}" --color=always "'.l:escaped_args.'"| tr -d "\017"',
        \ 0, 0)
endfunction

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0
  \ )



"****************************************
" Floating Windows
"****************************************
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(&lines * 0.5)
  let width = float2nr(&columns * 0.8)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 10

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction
" let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" Stolen from: https://www.reddit.com/r/neovim/comments/djmehv/im_probably_really_late_to_the_party_but_fzf_in_a/f463fxr/
" let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
" let $FZF_DEFAULT_OPTS=' --color=info:13,prompt:13,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'


