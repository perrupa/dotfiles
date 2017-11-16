" Alias file

" Leader stuff
let mapleader = " "

" vimrc edits
nnoremap <leader>sv :source ~/.vim/vimrc<cr>

" remap ; to :
noremap ; :

" wrapped line movement
nnoremap k gk
nnoremap j gj

" Arrow keys
nnoremap <Up> :m .-2<cr>
nnoremap <Down> ddp

" Yank Consistency
nnoremap Y y$


" Buffers
nnoremap <C-w> :q<cr>
nnoremap <C-s> :w<cr>
nnoremap <C-S-s> :wa<cr>
nnoremap <Leader>m :MaximizerToggle<CR>
nnoremap <C-\> :edit %:h<cr>

" Tabs
nnoremap gt :tabnext<cr>
nnoremap gT :tabprevious<cr>

" Rename tabs
nnoremap g, :TabooRename<space>

" Splits
set splitbelow
set splitright

" FZF
nnoremap <C-p> :FZF<cr>
nnoremap <C-b> :FZFBuffers<cr>
nnoremap <C-F> :Rg<space>
nnoremap <C-g> :Rg<cr>
nnoremap <C-t> :FZFBTags<cr>
nnoremap <C-S-t> :FZFTags<cr>
nnoremap <C-m> :FZFMarks<cr>

nnoremap <leader>p :FZF<cr>
nnoremap <leader>b :FZFBuffers<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>t :FZFBTags<cr>
nnoremap <leader>T :FZFTags<cr>

" Registers
nnoremap <leader>@ :registers<cr>

" EasyMotion
" https://github.com/easymotion/vim-easymotion#n-character-search-motion
nmap <leader>f <Plug>(easymotion-overwin-f)
map  <Leader>j <Plug>(easymotion-j)
map  <Leader>k <Plug>(easymotion-k)

" Git Aliases
command! Greview :Git! diff --staged
nnoremap <Leader>gs :Gstatus<cr>   " Status
nnoremap <Leader>ga :Gwrite<cr>    " Add
nnoremap <Leader>gc :Gcommit<cr>   " Commit
nnoremap <Leader>gd :Gdiff<cr>     " Diff
nnoremap <Leader>gr :Greview<cr>   " Diff

" NERD Tree
nnoremap <Leader>kb :NERDTreeToggle<cr>
nnoremap <Leader>kf :NERDTreeFind<cr>

" Arpeggios
call arpeggio#load()
Arpeggio inoremap fd <Esc><Esc>
Arpeggio inoremap df <Esc><Esc>
Arpeggio inoremap jk <Esc><Esc>
Arpeggio inoremap kj <Esc><Esc>

