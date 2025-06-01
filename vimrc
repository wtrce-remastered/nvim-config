runtime! debian.vim

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

let mapleader = " "

set number
set relativenumber
set nohlsearch
set noincsearch
set incsearch
set scrolloff=16
set scrolloff=5
set updatetime=50
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=140

nnoremap <C-f> <Nop>

inoremap <C-l> <Esc>

tnoremap <Esc> <C-\><C-n>

nnoremap j h
snoremap j h
vnoremap j h
onoremap j h

nnoremap k j
vnoremap k j
snoremap k j
onoremap k j

nnoremap l k
vnoremap l k
snoremap l k
onoremap l k

nnoremap ; l
snoremap ; l
vnoremap ; l
onoremap ; l

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap n nzzzv
nnoremap N Nzzzv

xnoremap <leader>p "_dP

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

nnoremap <leader>d "_d
vnoremap <leader>d "_d

nnoremap <silent> <Left> :wincmd h<CR>
nnoremap <silent> <Down> :wincmd j<CR>
nnoremap <silent> <Up> :wincmd k<CR>
nnoremap <silent> <Right> :wincmd l<CR>

nnoremap <silent> <C-w>j <C-w>H
nnoremap <silent> <C-w>k <C-w>J
nnoremap <silent> <C-w>l <C-w>K
nnoremap <silent> <C-w>; <C-w>L

nnoremap K 4j
nnoremap L 4k
