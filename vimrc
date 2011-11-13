set nocompatible

set autoindent
set smartindent

set t_Co=256

set tabstop=4
set shiftwidth=4
set expandtab

set showmatch

set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching 
set title           " show title in console title bar
set ttyfast         " smoother changes

au BufRead,BufNewFile *.pro     setfiletype make

"source ~/.vim/scripts/kde-devel.vim

" Include pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin on

colorscheme wombat
