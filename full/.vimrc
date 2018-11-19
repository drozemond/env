"""" ===== vi specifc =====
set autoread                    " Update on exteranl file change
set cmdheight=2                 " Set height command bar
set expandtab                   " Convert tabs to spaces
set hlsearch                    " Highlight when searching
set ignorecase                  " Ignore case when searching
set incsearch                   " Incremental search 
set laststatus=2                "Always show statusline
set lazyredraw                  " Only redraw on type
set magic                       " For regexp turn magic on
set nobackup                    " No backup
set nocompatible                " Disable vi compatibilty mode
set noerrorbells                " No audible bells
set noswapfile                  " No pesky swap files
set novisualbell                " No visual bell either
set nowritebackup               " Don't write backup
set number                      " Show line numbers
set ruler                       " Show current position
set scrolloff=7                 " Scrolloff 7 lines to cursor
set shiftwidth=4                " Shift 4 spaces
set smarttab                    " Be smart when using tabs
set tabstop=4                   " Tab as 4 spaces
set showmatch                   " Show matching brackets
set smartcase                   " Try to be smart when searching
set splitbelow                  " Always split window below
set splitright                  " Always split window to right
set title                       " Terminal title to the current file
set timeoutlen=500              " Timeout length
set ttyfast                     " Faster redrawing
set t_vb=                       " No visual bell 

inoremap jj <esc>               " Remaps the esc key to 'jj'

" Disabling all of the cursor keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""" ===== (Neo)Vim specific ==== 
call plug#begin('~/.local/share/nvim/plugged')

" Official editorconfig plugin for vim
Plug 'editorconfig/editorconfig-vim'

call plug#end()

filetype plugin on              " Enable filtype detection
filetype indent on              " Enable automatic indent
syntax enable                   " Enable sytax highlighting
set mouse=a                     " Mouse scrolling in Vim only


let mapleader = "," 

" Fast saving
nmap <leader>w :w!<cr>          

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr> 

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif
