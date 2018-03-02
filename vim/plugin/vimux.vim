" Prompt for a command to run
nnoremap <leader>tm :PromptVimTmuxCommand
" Run last command executed by RunVimTmuxCommand
nnoremap <leader>rl :RunLastVimTmuxCommand
" Inspect runner pane
nnoremap <leader>ri :InspectVimTmuxRunner.
" Close all other tmux panes in current window
nnoremap <leader>rx :CloseVimTmuxPanes
" Interrupt any command running in the runner pane
nnoremap <leader>rs :InterruptVimTmuxRunner

