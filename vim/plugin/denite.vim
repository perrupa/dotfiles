"
" Config
"

"
" Aliases
"

" ctrl + j/k to move up/down results
call denite#custom#map(
  \ 'insert',
  \ '<C-j>',
  \ '<denite:move_to_next_line>',
  \ 'noremap'
  \)
call denite#custom#map(
  \ 'insert',
  \ '<C-k>',
  \ '<denite:move_to_previous_line>',
  \ 'noremap'
  \)
call denite#custom#map(
  \ 'insert',
  \ '<C-Space>',
  \ '<denite:toggle_select>',
  \ 'noremap'
  \)

" Open in tabs/splits
call denite#custom#map(
  \ 'insert',
  \ '<C-v>',
  \ '<denite:do_action:vsplitswitch>',
  \ 'noremap'
  \)
call denite#custom#map(
  \ 'insert',
  \ '<C-x>',
  \ '<denite:do_action:splitswitch>',
  \ 'noremap'
  \)
call denite#custom#map(
  \ 'insert',
  \ '<C-t>',
  \ '<denite:do_action:tabopen>',
  \ 'noremap'
  \)
