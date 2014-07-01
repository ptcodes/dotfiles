set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Bundle 'tpope/vim-rails'
Bundle "kchmck/vim-coffee-script"
Bundle "jwhitley/vim-matchit"
Bundle 'scrooloose/nerdcommenter'
Bundle "ervandew/supertab"
Bundle "wincent/Command-T"
call vundle#end() 

filetype plugin indent on " Enable filetype plugins

syntax enable " Enable syntax highlighting
set background=dark
colorscheme Tomorrow-Night

set history=5000 " Remember more commands and search history
set expandtab " Use spaces instead of tabs
set hlsearch " Highlight search results
set ignorecase " Ignore case when searching
set number " Show string numbers
set ruler " Show the current cursor position at the bottom right corner
set shell=bash

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" Set the leader key
let mapleader = ","

" Run currect file against ruby
map <Leader>r :!ruby %<CR>

" Run currect file against rspec
map <Leader>s :!rspec -c %<CR>

" Run currect file against go
map <Leader>g :!go run %<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch between buffers
nnoremap <leader><leader> <c-^>

" Clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>
