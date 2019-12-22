" ------------------------------
" Plugin
" ------------------------------
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'
Plugin 'dense-analysis/ale'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" PS: vimproc need to run make command

" ------------------------------
" Base
" ------------------------------
set wrap
set number
set hlsearch
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
" Autocmd
" ------------------------------
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript


" ------------------------------
" Autoformat
" ------------------------------
noremap <F4> :Autoformat<CR>
let g:autoformat_verbosemode=1
let g:formatdef_my_cpp = '"astyle --style=google"'
let g:formatters_cpp = ['my_cpp']
" au BufWrite * :Autoformat


" ------------------------------
" Leader
" ------------------------------
let mapleader="\\"

" .vimrc
nnoremap <silent> <Leader>ve :tabnew ~/.vimrc<CR>
nnoremap <silent> <Leader>vv :source ~/.vimrc<CR>
nnoremap <silent> <Leader>vh :setlocal hlsearch!<CR>
nnoremap <silent> <Leader>vn :setlocal number!<CR>
nnoremap <silent> <Leader>vt :call BackgroundToggle()<CR>

" format
nnoremap <silent> <Leader>= :normal! gggqG<CR>

" swith buffer
nnoremap <silent> gB :bprevious<CR>
nnoremap <silent> gb :bnext<CR>
nnoremap <silent> <Leader>bl :ls<CR>
nnoremap <silent> <Leader>bo :enew<CR>
nnoremap <silent> <Leader>bd :bdelete<CR>


" ------------------------------
" NERDTree
" ------------------------------
let NERDTreeWinPos="left"
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" ------------------------------
" Tagbar
" ------------------------------
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
let g:tagbar_right=1
nnoremap <silent> <F3> :TagbarToggle<CR>


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
let g:airline#extensions#tabline#buffer_nr_show = 1


" ------------------------------
" YouCompleteMe
" ------------------------------
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'


" ------------------------------
" ale
" ------------------------------
let g:ale_linters = {
      \   'c++': ['clang'],
      \   'c': ['clang'],
      \   'python': ['pylint'],
      \   'javascript': ['eslint'],
      \   'typescript': ['prettier'],
      \}
let g:ale_fixers = {
      \    'javascript': ['eslint'],
      \    'typescript': ['prettier'],
      \    'scss': ['prettier'],
      \    'html': ['prettier'],
      \}
let g:ale_fix_on_save = 1
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'


"  'typescript': ['tsserver', 'tslint'],



" ------------------------------
" TsuImport
" ------------------------------
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"







" ------------------------------
" Tool Function
" ------------------------------

" change background is dark or light
function BackgroundToggle()
  if (&background ==? "dark")
    let &background = "light"
  else
    let &background = "dark"
  endif
endfunction

