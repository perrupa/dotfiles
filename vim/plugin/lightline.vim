let g:lightline = {
  \   'colorscheme': 'default',
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
