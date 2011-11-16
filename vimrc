set nocompatible    " disable compatibility with Vi

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase      " ignore case when searching
set smartcase       " except when you use an upper case letter

set showmatch

set ruler           " show the cursor position all the time
set cursorline      " highlight line under cursor
set mouse=a         " enables visual mouse selection
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set number          " show line numbers
set title           " show title in console title bar
set ttyfast         " smoother changes

" keep a backup file in a separate directory
set backup
set backupdir=~/.vim_local/backup
set directory=~/.vim_local/tmp

" set correct color set in terminal
if !has("gui_running")
    set t_Co=256
endif

au BufRead,BufNewFile *.pro     setfiletype make

"source ~/.vim/scripts/kde-devel.vim

" include pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin on

colorscheme wombat
