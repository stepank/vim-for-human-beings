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

" command mode
imap <C-P> <C-O>:

" terminal mode
imap <C-T> <C-O>:!

" selection with shift + arrows

imap <S-Up> <C-O>v<Up>
imap <S-Down> <C-O>v<Down>
vmap <S-Up> <Up>
vmap <S-Down> <Down>

imap <S-Left> <C-O>v
imap <S-Right> <C-O>v
vmap <S-Left> <Left>
vmap <S-Right> <Right>

" the following keys don't work in gnome-terminal
imap <S-Home> <C-O>v<Home>
imap <S-End> <C-O>v<End>
vmap <S-Home> <Home>
vmap <S-End> <End>

" switch tabs
imap <A-Left> <C-O>:tabprev<CR>
imap <A-Right> <C-O>:tabnext<CR>

" copy / cut / paste
vmap <C-C> y
vmap <C-X> d
imap <C-V> <C-O>:call PasteForHumans()<CR>

" open a new tab
imap <C-N> <C-O>:tabedit 

" close the current tab
imap <C-W> <C-O>:quit<CR>

" save the current tab
imap <C-S> <C-O>:write<CR>

" undo / redo
imap <C-Z> <C-O>:undo<CR>
imap <C-Y> <C-O>:redo<CR>

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

function! IsCursorAtEndOfLine()
    return col('.') == col('$')
endfunction

let g:CursorWasAtEndOfLineI = 0
autocmd CursorMovedI * let g:CursorWasAtEndOfLineI = IsCursorAtEndOfLine()

function! PasteForHumans()
    if g:CursorWasAtEndOfLineI == 1
        normal! "+p
    else
        normal! "+P
    endif
endfunction

