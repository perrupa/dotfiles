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

" Buffers
nnoremap bn :bnext<cr>
nnoremap bp :bprevious<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <C-w> :q<cr>
nnoremap <C-W> :bd<cr>
nnoremap <C-s> :w<cr>
nnoremap <Leader>m :MaximizerToggle<CR>

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
nnoremap <C-f> :FZFLines<cr>
nnoremap <C-g> :Rg<cr>
nnoremap <C-t> :FZFBTags<cr>
nnoremap <C-T> :FZFTags<cr>

nnoremap <leader>p :FZF<cr>
nnoremap <leader>b :FZFBuffers<cr>
nnoremap <leader>f :FZFLines<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>t :FZFBTags<cr>
nnoremap <leader>T :FZFTags<cr>
" EasyMotion
" https://github.com/easymotion/vim-easymotion#n-character-search-motion
nmap <leader>f <Plug>(easymotion-overwin-f)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Git Aliases
command! Greview :Git! diff --staged
nnoremap <Leader>gs :Gstatus<cr>   " Status
nnoremap <Leader>ga :Gwrite<cr>    " Add
nnoremap <Leader>gc :Gcommit<cr>   " Commit
nnoremap <Leader>gd :Gdiff<cr>     " Diff
nnoremap <Leader>gr :Greview<cr>   " Diff

" NERD Tree
nnoremap <Leader>kb :NERDTreeToggle<cr>

" Arpeggios
call arpeggio#load()
Arpeggio inoremap fd <Esc><Esc>
Arpeggio inoremap df <Esc><Esc>
Arpeggio inoremap jk <Esc><Esc>
Arpeggio inoremap kj <Esc><Esc>

