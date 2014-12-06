let mapleader = ","
"let g:mapleader = ","

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><cr> :noh<cr>

set wrap linebreak nolist

"nnoremap <leader>ev :vsplit ~/.vimrc.after<cr>
"nnoremap <leader>sv :source ~/.vimrc.after<cr>
inoremap jk <esc>
inoremap <esc> <nop>

nnoremap <leader>d :bprevious<CR>:bdelete #<CR>   " Close a buffer without losing the spliv
nnoremap <leader>bd :bdelete<CR>                  " Close the current buffer
nnoremap <leader>ba :1,1000 bd!<cr>               " Close all the buffers
nnoremap <leader>> :10winc ><CR>
nnoremap <leader>< :10winc <<CR>

" Copy to the Copy|Paste Buffer
vnoremap <leader>y "*y
