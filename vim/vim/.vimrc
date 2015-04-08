" from Doug's VimRC
set lazyredraw

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Use english for spellchecking, but don't spellcheck by default
let mapleader = ","
nmap <leader>s :set spell spelllang=en<cr>
nmap <leader>, :set nospell<cr>

" html indenting fix
filetype indent on

set cursorline



" reset cursor to last position
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" set the max column that syntax highlighting will work to. Greatly speeds up large files
set synmaxcol=120

set wildmenu
set wildmode=list:longest,full

set nu
syntax on
set ruler
set encoding=utf-8
set showmode
set nocompatible
set modelines=0

set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab

set scrolloff=3
set showcmd
set hidden
set visualbell
set backspace=indent,eol,start
set wrap

set relativenumber
set undofile

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79

"remappings
nnoremap <leader>w <C-w>v<C-w>l

nnoremap j gj
nnoremap k gk
nnoremap ; :

nnoremap / /\v
vnoremap / /\v

nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jj <ESC>


"colors
au FocusLost * :wa
"colors zenburn 
colors molokai
set t_Co=256


set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
