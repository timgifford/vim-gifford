execute pathogen#infect()

let mapleader = ","

"let g:mapleader = ","

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set nocompatible    " Use vim, no vi defaults
set number          " Show line numbers
set ruler           " Show line and column number
syntax enable       " Syntax highlighting on files

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Tab settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab       "Use spaces, not tabs
" set backspace=indent,eol,start  " backspace through everything in insert mode

filetype plugin indent on

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set noswapfile

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><cr> :noh<cr>

set wrap linebreak nolist

" TODO: Make this for both Windows and Mac
"nnoremap <leader>ev :vsplit ~/.vimrc<cr>
"nnoremap <leader>eb :vsplit ~/vimfiles/bundles.sh<cr>
"nnoremap <leader>sv :source ~/.vimrc<cr>
inoremap jk <esc>
inoremap <esc> <nop>

nnoremap <leader>n :NERDTreeToggle<CR>  " Toggle the NerdTree

nnoremap <leader>d :bprevious<CR>:bdelete #<CR>   " Close a buffer without losing the spliv
nnoremap <leader>bd :bdelete<CR>                  " Close the current buffer
nnoremap <leader>ba :1,1000 bd!<cr>               " Close all the buffers
nnoremap <leader>> :10winc ><CR>
nnoremap <leader>< :10winc <<CR>

" NERDCommenter mappings
" if has("gui_macvim") && has("gui_running")
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
map <leader>/ <plug>NERDCommenterToggle<CR>
" endif

" PEP8 Standard Python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"
" Copy to the Copy|Paste Buffer
vnoremap <leader>y "*y
vnoremap <leader>p "*p

" Set the color scheme
color hybrid

" Make cut | copy | paste as with Ctrl + C, V, and P
source $VIMRUNTIME/mswin.vim
