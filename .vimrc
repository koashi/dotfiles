" .vimrc

""" Character encoding
set encoding=utf-8

""" NeoBundle (is a Vim plugin manager.)
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

""" Options
" Syntax
syntax enable

" Colorscheme
set t_Co=256
colorscheme molokai

" Backspace
set backspace=indent,eol,start

" Undo
set undofile

" Row number
set number

" Status line
set laststatus=2
set showmode
set showcmd
set cmdheight=2

" Decimal number
set nrformats=

" Search
set incsearch
set hlsearch

" Indent
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" Listchars
set list
set listchars=tab:▸\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
