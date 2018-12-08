let g:lightline = {
  \   'colorscheme': 'default',
  \   'tabline': {
  \     'left': [['bufferline']],
  \   },
  \   'component_expand': {'bufferline': 'LightlineBufferline'},
  \   'component_type': {'bufferline': 'tabsel'},
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ],
	\     'right': [ [ 'lineinfo' ],
	\              [ 'percent' ],
	\              [ 'filetype' ] ]
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }

function! LightlineBufferline()
  call bufferline#refresh_status()
  return [
    g:bufferline_status_info.before,
    g:bufferline_status_info.current,
    g:bufferline_status_info.after
  ]
endfunction

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}

let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}


