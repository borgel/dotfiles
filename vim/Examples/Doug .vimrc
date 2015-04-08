
set completeopt+=longest

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Don't need compatibility with Vi
set nocompatible

" Set the comments format
set comments=sl:/*,mb:*,elx:*/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=5

" Show relative line numbers
if v:version >= 703
   set relativenumber
else
" else Show line numbers
   set number
endif

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers - Incremental search
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Show incomplete cmds down at the bottom
set showcmd

" Show current mode down at the bottom
set showmode

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell

" Enable mouse support in console
set mouse=a

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

set background=dark
"colorscheme desert
colorscheme evening

" Set extra options when running in GUI mode
if has("gui_running")
   set guioptions-=T
   set guioptions+=e
   set t_Co=256
   set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups, and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git, etc anyway ...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3
set softtabstop=3

" Linebreak on 80 characters
set lbr
set textwidth=80

" Auto Indent, Smart Indent, Wrap lines
set autoindent
set smartindent
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remappings and short cuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap jj to escape in insert mode
inoremap jj <Esc>

" Alias NERDTree to nt
let mapleader = ","
nmap <leader>n :NERDTree<cr>

" Use english for spellchecking, but don't spellcheck by default
let mapleader = ","
nmap <leader>s :set spell spelllang=en<cr>
nmap <leader>, :set nospell<cr>

" Use ,h to turn highlighting off
let mapleader = ","
nmap <leader>h :noh<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Index the tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Index the ctags
set tags=./tags;/
