"
"-------------------------
"  Plugin
" -------------------------
set shell=/bin/sh
set nocompatible
filetype off

call plug#begin()
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'

" Plug 'mhartington/nvim-typescript', {'build': './install.sh'}
" Plug 'dense-analysis/ale'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'heavenshell/vim-jsdoc', { 'on_cmd': 'JsDoc' }
" Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/denite.nvim'
" Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --bin'}
call plug#end()
filetype plugin indent on


" ------------------------------
" Base
" ------------------------------

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
set background=dark

syntax enable

set wrap
set number
set cursorline

set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set t_Co=256

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

" search
set incsearch
set ignorecase
set hlsearch
set smartcase
set noshowmatch

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
let mapleader=" "

" .vimrc
nnoremap <silent> <Leader>ve :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>vv :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>vh :nohl<CR>
nnoremap <silent> <Leader>vn :set number!<CR>
nnoremap <silent> <Leader>vb :call BackgroundToggle()<CR>

" buffer
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
" Easymotion
" ------------------------------
nmap t <Plug>(easymotion-jumptoanywhere)

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
" 总是显示状态栏
let laststatus = 2
let g:airline_powerline_fonts = 1
let g:airline_theme="onedark"
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" ------------------------------
" nvim-typescript
" ------------------------------

" let g:nvim_typescript#quiet_startup = 1

" nnoremap <silent> <a-cr> :TSGetCodeFix<CR>
" nnoremap <silent> <Leader>d :TSDefPreview<CR>

" inoremap <silent><expr> <TAB>
" \ pumvisible() ? "\<C-n>" :
" \ <SID>check_back_space() ? "\<TAB>" :
" \ deoplete#manual_complete() 
" function! s:check_back_space() abort "{{{
" let col = col('.') - 1
" return !col || getline('.')[col - 1]  =~ '\s'
" endfunction"}}}

" ------------------------------
" deoplete
" ------------------------------

" let g:deoplete#enable_at_startup = 1

" ------------------------------
" ale
" ------------------------------
" let g:ale_completion_enabled = 1
" let g:ale_linters = {
"       \   'c++': ['clang'],
"       \   'c': ['clang'],
"       \   'python': ['pylint'],
"       \   'javascript': ['eslint'],
"       \   'typescript': ['tsserver'],
"       \}
" let g:ale_fixers = {
"       \    'javascript': ['eslint'],
"       \    'typescript': ['prettier'],
"       \    'scss': ['prettier'],
"       \    'html': ['prettier'],
"       \}
" let g:ale_fix_on_save = 1
" let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'
" let g:ale_set_balloons = 1
" let g:ale_hover_to_preview = 1
" let g:ale_completion_tsserver_autoimport = 1

" nnoremap <silent> <F4> :ALEFix<CR>
" nnoremap <silent> <Leader>lr :ALEFindReferences<CR>
" nnoremap <silent> <Leader>ld :ALEGoToDefinition<CR>
" nnoremap <silent> <Leader>[ :ALEPrevious<CR>
" nnoremap <silent> <Leader>] :ALENext<CR>

" ------------------------------
" typescript
" ------------------------------
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''

" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"

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
