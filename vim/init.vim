set nocompatible
set hidden
set noswapfile

" Wildignore
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*

" Detect and show filechanges on open buffers
set autoread
set autowrite

" Imports
source ~/.config/nvim/autoload/plug.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/alias.vim

