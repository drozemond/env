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
