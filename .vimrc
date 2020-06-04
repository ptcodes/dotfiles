set nocompatible      " We're running Vim, not Vi!
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rhysd/vim-crystal'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'tomlion/vim-solidity'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'hashivim/vim-terraform'
call vundle#end() 

filetype plugin indent on
colorscheme Tomorrow-Night

set encoding=utf8  " Set utf8 as the default encoding 
set history=5000   " Increase history size
set hlsearch       " Highlight search results
set ignorecase     " Ignore case when searching
set number         " Show line numbers
set ruler          " Show the current cursor position at the bottom right corner
set shell=bash

set nobackup       " Do not keep backup files, everything is in git
set nowb 
set noswapfile     " Do not create annoying swap files
set expandtab      " Use spaces instead of tabs
set shiftwidth=2   " 1 tab == 2 spaces
set tabstop=2
set ai             " Auto indent
set si             " Smart indent
set wrap           " Wrap lines
set clipboard+=unnamed " Copy across different instances of vim

" Spell-checking for Markdown files only
autocmd BufRead,BufNewFile *.md setlocal spell

" Set the leader key
let mapleader = ","

" Run the current file against ruby
map <Leader>r :!ruby %<CR>

" Run the current file against rspec
map <Leader>s :!rspec -c %<CR>

" Change the default mapping and the default command to invoke CtrlP:
nnoremap <leader>p :CtrlP<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch between buffers
nnoremap <leader><leader> <c-^>

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

let g:jsx_ext_required = 0

let g:instant_markdown_autostart = 1

autocmd BufNewFile,BufRead *.slim set ft=slim " For vim-slim to make highlighting work
