set nocompatible
" Autoinstall of plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"Start Loading Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
call plug#end()
"Finish Loading Plugins

colorscheme badwolf
syntax enable
set tabstop=4
set softtabstop=4
set relativenumber
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set laststatus=2
set t_Co=256

set scrolloff=1
set wrap

"Paste Toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","
