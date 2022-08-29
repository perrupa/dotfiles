" Prompt for a command to run
nnoremap <leader>tm :VimuxPromptCommand<CR>

" Run last command executed by RunVimTmuxCommand
nnoremap <leader>tl :VimuxRunLastCommand<CR>

" Test the current file
nnoremap <leader>tt :VimuxPromptCommand<CR>clear && dev test <C-r>%<CR>

" Inspect runner pane
nnoremap <leader>tv :VimuxInspectRunner<CR>

" Close all other tmux panes in current window
nnoremap <leader>tx :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
nnoremap <leader>rs :VimuxInterruptRunnerCR>

" FZF Vimux commands
nnoremap ;t :FZFCommands<CR>Vimux
