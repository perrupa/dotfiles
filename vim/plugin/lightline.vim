let g:lightline = {
  \   'colorscheme': 'default',
  \   'tabline': {
  \     'left': [['buffers']],
  \     'right': [['close']]
  \   },
  \   'component_type': {'buffers': 'tabsel'},
  \   'component_expand': {'buffers': 'lightline#bufferline#buffers'},
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

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}

let g:lightline.subseparator = {
	\   'left': '', 'right': ''
  \}
