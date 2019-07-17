nmap <LEADER>af :ALEFix<CR>

let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_set_loclist = 1

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'css': ['prettier'],
\  'ruby': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'rubocop'
\  ]
\}

let g:ale_linters = {'ruby': ['rubocop', 'ruby'], 'javascript': ['eslint']}
let g:ale_ruby_rubocop_executable = 'bin/rubocop'
let g:ruby_indent_assignment_style = 'variable'

" hi DiffAdd ctermfg=148 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=#46830c gui=bold
" hi DiffDelete ctermfg=197 ctermbg=NONE cterm=bold guifg=#8b0807 guibg=NONE gui=NONE
" hi DiffChange ctermfg=208 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=#243955 gui=NONE
" hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
