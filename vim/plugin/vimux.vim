" Prompt for a command to run
nnoremap <leader>tm :VimuxPromptCommand<CR>

" Run last command executed by RunVimTmuxCommand
nnoremap <leader>tl :VimuxRunLastCommand<CR>

" Inspect runner pane
nnoremap <leader>ti :VimuxInspectRunner<CR>

" Close all other tmux panes in current window
nnoremap <leader>tx :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
nnoremap <leader>rs :VimuxInterruptRunnerCR>

" FZF Vimux commands
nnoremap ;t :FZFCommands<CR>Vimux
