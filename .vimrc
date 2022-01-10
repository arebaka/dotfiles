if v:progname =~? "evim"
  finish
endif

source $VIMRUNTIME/defaults.vim

if has('syntax') && has('eval')
  packadd! matchit
endif

" call plug#begin('~/.vim/plugged')
" call plug#end()

set nocompatible
set encoding=utf8
set number
set ruler
set hlsearch
set showmatch
set mouse=a
set noerrorbells
set novisualbell
set noundofile
set noswapfile
set nobackup
set writebackup
set autoindent
set novisualbell
set showtabline=0
set foldcolumn=1
set wrap
set linebreak
set backspace=indent,eol,start
set hidden
set ttyfast
set showmode
set showcmd

syntax on
filetype on
filetype plugin on

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

source ~/.vim/kissvim/kissvim.vim

" we can replace tabs to 4-space indents using :set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
