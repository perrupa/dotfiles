" Terminal settings
set t_Co=256
set lazyredraw
set termguicolors
set number

" Splits
set splitbelow
set splitright

set mouse=a
set scrolloff=5

" Show tabline for active buffer list
set showtabline=2

colorscheme onedark

" Search highlighting with bold + underline
highlight Search guibg=guibg guifg=guifg gui=bold,italic,underline



function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )

  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-file)
  nmap <buffer> N <Plug>(fern-action-new-dir)
  nmap <buffer> K <Plug>(fern-action-new-dir)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> R <Plug>(fern-action-reload)
  nmap <buffer> s <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> < <Plug>(fern-action-leave)
  nmap <buffer><nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()

  " Find current file in Fern (toggle file tree)
  noremap <silent> <Leader>e :Fern . -drawer -reveal=% -width=35 -toggle<CR><C-w>=
augroup END

