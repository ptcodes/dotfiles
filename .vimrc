set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'jwhitley/vim-matchit'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'wincent/Command-T'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-endwise'  " adds end after if, do, def in Ruby
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
set encoding=utf8 " Set utf8 as standard encoding 

set nobackup " Don't keep backup files, everything is in git anyway
set nowb 
set noswapfile " Don't write annoying swap files

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines


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
