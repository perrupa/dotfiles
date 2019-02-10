if has('nvim')
  " Trying to figure out :startinsert on new terminal, but not when entering the buffer to avoid trapping navigation between splits/windows
  " autocmd BufWinEnter,WinEnter term://* startinsert
  " au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  " autocmd BufNew term://* startinsert

  " Esc to leave insert mode
  tnoremap <Esc> <C-\><C-n>
endif

