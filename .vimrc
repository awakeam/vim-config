" ------------------------------
" Plugin
" ------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on


" ------------------------------
" Base
" ------------------------------
set wrap
set number
set cursorline

set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set t_Co=256
syntax enable

set wildmenu
set wildmode=longest:list,full

" tab
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set undofile
set history=1000
set autoread
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//


" ------------------------------
" Theme
" ------------------------------
set background=dark
colorscheme gruvbox


" ------------------------------
" Window
" ------------------------------
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l


" ------------------------------
" Leader
" ------------------------------
let mapleader="\\"

" .vimrc
nnoremap <Leader>ve :vs ~/.vimrc<CR>
nnoremap <Leader>vs :so ~/.vimrc<CR>
nnoremap <Leader>vd :set background=dark<CR>
nnoremap <Leader>vl :set background=light<CR>


" ------------------------------
" NERDTree
" ------------------------------
let NERDTreeWinPos="left"
nnoremap <F2> :NERDTreeToggle<CR>


" ------------------------------
" Airline
" ------------------------------
" 设置字体
set guifont=Powerline_Consolas:h14:cANSI
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double
" 总是显示状态栏
let laststatus = 2
let g:airline_powerline_fonts = 1
let g:airline_theme="gruvbox"
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
