set nocompatible      " We're running Vim, not Vi!
filetype off

call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-crystal'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'kchmck/vim-coffee-script'
Plug 'mxw/vim-jsx'
Plug 'mtscout6/vim-cjsx'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'suan/vim-instant-markdown', {'rtp': 'after'}
Plug 'kien/ctrlp.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'christoomey/vim-tmux-navigator'
Plug 'hashivim/vim-terraform'
Plug 'vimwiki/vimwiki'
Plug 'fatih/vim-go'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'shmup/vim-sql-syntax'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim'
call plug#end()

set background=dark
colorscheme palenight
let g:airline_theme = "palenight"

syntax on                  " Enable syntax highlighting

set encoding=utf8          " Set utf8 as the default encoding
set history=5000           " Increase history size
set hlsearch               " Highlight search results
set ignorecase             " Ignore case when searching
set number                 " Show line numbers
set ruler                  " Show the current cursor position at the bottom right corner
set shell=/bin/zsh         " Set shell
set nobackup               " Do not keep backup files, everything is in git
set nowritebackup
set noswapfile             " Do not create annoying swap files
set autoindent             " Auto indent according to previous line
set expandtab              " Use spaces instead of tabs
set shiftwidth=2           " Tab key indents 2 spaces
set tabstop=2
set si                     " Smart indent
set wrap                   " Wrap lines
set clipboard+=unnamed     " Copy across different instances of vim
set hidden                 " Switch between buffers without having to save first
set cursorline             " Find the current line quickly
set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted

set ttyfast                " Faster redrawing
set lazyredraw             " Only redraw when necessary

" Spell-checking for Markdown files only
autocmd BufRead,BufNewFile *.md, *.txt setlocal spell

" Set the leader key
let mapleader = ","

map <Leader>r :!ruby %<CR>      " Run the current file against ruby
map <Leader>s :!rspec -c %<CR>  " Run the current file against rspec
map <Leader>g :!go run %<CR>    " Run the current file again go

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

" let g:instant_markdown_autostart = 1

" For vim-slim to make highlighting work
autocmd BufNewFile,BufRead *.slim set ft=slim

let g:go_fmt_command = "goimports"   " Run goimports along gofmt on each save
let g:go_auto_type_info = 1          " Automatically get signature/type info for object under cursor

" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
