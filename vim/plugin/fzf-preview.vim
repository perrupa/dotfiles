" floating window size ratio
let g:fzf_preview_floating_window_rate = 0.9

" floating window winblend value
let g:fzf_preview_floating_window_winblend = 15

" Commands used for fzf preview.
" The file name selected by fzf becomes {}
let g:fzf_preview_command = 'bat --color=always --style=grid {-1}' " Installed bat

" Commands used to get the file list from project
let g:fzf_preview_filelist_command = 'rg --files --hidden --follow --no-messages -g \!"* *"' " Installed ripgrep

" Commands used to get the file list from git reposiroty
let g:fzf_preview_git_files_command = 'git ls-files --exclude-standard'

" Commands used to get the file list from current directory
" let g:fzf_preview_directory_files_command = 'rg --files --hidden --follow --no-messages -g \!"* *"'

" Commands used to get the git status file list
let g:fzf_preview_git_status_command = "git status --short --untracked-files=all | awk '{if (substr($0,2,1) !~ / /) print $2}'"

" Commands used for project grep
let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading'

" Commands used for current file lines
" let g:fzf_preview_lines_command = 'cat'
let g:fzf_preview_lines_command = 'bat --color=always --style=grid --theme=ansi-dark --plain'

" Commands used for preview of the grep result
let g:fzf_preview_grep_preview_cmd = expand('<sfile>:h:h') . '/bin/preview_fzf_grep'

" Keyboard shortcuts while fzf preview is active
let g:fzf_preview_preview_key_bindings = 'ctrl-d:preview-page-down,ctrl-u:preview-page-up,?:toggle-preview'

" Specify the color of fzf
let g:fzf_preview_fzf_color_option = ''

" Set the processors when selecting an element with fzf
" Do not use with g:fzf_preview_*_key_map
let g:fzf_preview_custom_default_processors = {}
" For example, set split to ctrl-s
" let g:fzf_preview_custom_default_processors = fzf_preview#resource_processor#get_default_processors()
" call remove(g:fzf_preview_custom_default_processors, 'ctrl-x')
" let g:fzf_preview_custom_default_processors['ctrl-s'] = function('fzf_preview#resource_processor#split')

" Use as fzf preview-window option
" let g:fzf_preview_fzf_preview_window_option = ''
let g:fzf_preview_fzf_preview_window_option = 'down:70%'

" Command to be executed after file list creation
let g:fzf_preview_filelist_postprocess_command = ''
" let g:fzf_preview_filelist_postprocess_command = 'xargs -d "\n" ls -U --color'      " Use dircolors
" let g:fzf_preview_filelist_postprocess_command = 'xargs -d "\n" exa --color=always' " Use exa

" Use vim-devicons
" let g:fzf_preview_use_dev_icons = 1

" devicons character width
" let g:fzf_preview_dev_icon_prefix_length = 2
