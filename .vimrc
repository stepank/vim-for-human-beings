scriptencoding utf-8
set encoding=utf-8
"
" do not make vim compatible with vi
set nocompatible

set insertmode

" line numbers
set number

" syntax highlighting
syntax on

" show matching bracket
set showmatch

" keeps cursor in the middle of the screen while scrolling up and down
set scrolloff=7

" don't beep
set visualbell
set noerrorbells

" no backup & swap
set nobackup
set noswapfile

" activates indenting for files
filetype indent on

" auto indenting
set autoindent

" use spaces instead of tabulators
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" do not wrap long lines
set nowrap
set linebreak

" show whitespace
set listchars=tab:»\ ,trail:·
set list

" wrap cursor
set whichwrap+=<,>,[,]

" makes backspace work in cygwin
set backspace=2

" copy / paste to / from the system clipboard
if has("win32unix")
    set clipboard=unnamed
else
    set clipboard=unnamedplus
endif

" bash like tab completion
set wildmode=longest,list
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class

" do not copy line numbers with mouse
set mouse+=a

" case insetisitivity while searching
set ignorecase
set smartcase

" search highlight
set hlsearch
set incsearch

" selection with shift + arrows
source $VIMRUNTIME/mswin.vim
behave mswin

" command mode
imap <C-P> <C-O>:

" terminal mode
imap <C-T> <C-O>:!

" switch tabs
imap <A-Left> <C-O>:tabprev<CR>
imap <A-Right> <C-O>:tabnext<CR>

" delete (not cut) with <Del>
vmap <Del> "_d

" open a new tab
imap <C-N> <C-O>:tabedit 

" close the current tab
imap <C-W> <C-O>:quit<CR>

" save the current tab
imap <C-S> <C-O>:write<CR>

" shell
imap <C-B> <C-O>:shell<CR>

" find / replace
if has("win32unix")
    set <S-F3>=[1;2R
else
    set <S-F3>=O1;2R
endif
imap <C-F> <C-O>/
imap <C-H> <C-O>:noh<CR>
imap <F3> <C-O>/<CR>
imap <S-F3> <C-O>?<CR>
imap <C-R> <C-O>:%s/

