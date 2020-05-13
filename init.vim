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
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mattn/emmet-vim'
" Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-fugitive'
Plug 'sbdchd/neoformat'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

call plug#end()
filetype plugin indent on


" ------------------------------
" Base
" ------------------------------

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
set background=dark

set hidden
set number
syntax enable
set cursorline

set nowrap
set nobackup
set nowritebackup

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

set splitbelow
set splitright

" search
set incsearch
set ignorecase
set hlsearch
set smartcase
set noshowmatch

set updatetime=300
set shortmess+=c
set signcolumn=yes


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
nnoremap <silent> <Leader>vE :e ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>vv :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>vh :nohl<CR>
nnoremap <silent> <Leader>vn :set number!<CR>
nnoremap <silent> <F10> :wa<CR>
" nnoremap <silent> <Leader>vb :call BackgroundToggle()<CR>

" imap <tab> <C-x><C-o>

" buffer
nnoremap <silent> gB :bprevious<CR>
nnoremap <silent> gb :bnext<CR>
nnoremap <silent> <Leader>w :bdelete<CR>

" ------------------------------
" NERDTree
" ------------------------------

let NERDTreeWinPos="left"
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" ------------------------------
" Airline
" ------------------------------

set guifont=Powerline_Consolas:h14:cANSI
let laststatus = 2
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
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
" LeaderF
" ------------------------------
 
let g:Lf_Ctags = "/usr/bin/ctags"
let g:Lf_WindowHeight = 0.30

" ------------------------------
" Dirvish
" ------------------------------

nnoremap <silent> <leader>d :Dirvish<CR>
" nmap <leader>dv <Plug>(dirvish_vsplit_up)
" nmap <leader>ds <Plug>(dirvish_split_up)

" ------------------------------
" Neoformat
" ------------------------------

nnoremap <silent> <leader>= :Neoformat<CR>

" ------------------------------
" Coc.nvim
" ------------------------------

autocmd CursorHold * silent call CocActionAsync('highlight')
command! -nargs=0 Format :call CocAction('format')

nnoremap <silent> <F6> :CocAction('runCommand', 'tsserver.organizeImports')<CR>
nnoremap <silent> <F7> :CocAction('quickfixes')<CR>
nnoremap <silent> <F8> :Format<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

" ------------------------------
" ALE
" ------------------------------

" let g:ale_completion_enabled = 1
" let g:ale_completion_tsserver_autoimport = 1
"
" let g:ale_set_balloons = 1
" let g:ale_hover_to_preview = 1
" let g:ale_fix_on_save = 1
" let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'
" let g:ale_linters = {
"       \ 'typescript': ['tsserver'],
"       \ 'javascript': ['prettier'],
"       \ 'sh': ['language_server'],
"       \ 'c++': ['clang'],
"       \ 'c': ['clang'],
"       \ 'python': ['pylint'],
"       \}
" let g:ale_fixers = {
"       \ 'typescript': ['prettier'],
"       \ 'javascript': ['prettier'],
"       \ 'scss': ['prettier'],
"       \ 'html': ['prettier'],
"       \}

" nnoremap <silent> <F2> :ALEHover<CR>
" nnoremap <silent> <F3> :ALEFindReferences<CR>
" nnoremap <silent> <F4> :ALEGoToDefinition<CR>
" nnoremap <silent> <F7> :ALEFix<CR>
" nnoremap <silent> <M-CR> :ALEOrganizeImports<CR>
" nnoremap <silent> <F18> :ALERename<CR>
" nnoremap <silent> <Leader>[ :ALEPrevious<CR>
" nnoremap <silent> <Leader>] :ALENext<CR>

" ------------------------------
" Tool Function
" ------------------------------

" " change background is dark or light
" function BackgroundToggle()
"   if (&background ==? "dark")
"     let &background = "light"
"   else
"     let &background = "dark"
"   endif
" endfunction


" ------------------------------
" Install other things
" ------------------------------

" pip3 install python-language-server
" npm i -g bash-language-server
" npm install -g dockerfile-language-server-nodejs
" pip3 install cmake-language-server






