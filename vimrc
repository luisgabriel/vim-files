set nocompatible    " disable compatibility with Vi

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase      " ignore case when searching
set smartcase       " except when you use an upper case letter

set showmatch       " show matching parenthesis

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
set wildmenu        " show options in command mode pressing Tab

" show unwanted spaces with dots
set list listchars=tab:▸\ ,trail:·,nbsp:%,extends:→,precedes:←

" keep a backup file in a separate directory
set backup
set backupdir=~/.vim_local/backup
set directory=~/.vim_local/tmp

" configure tags
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/qt4

" Move a line of text using ALT+[Up/Down]
nmap <A-Down> mz:m+<cr>`z
nmap <A-Up> mz:m-2<cr>`z
vmap <A-Down> :m'>+<cr>`<my`>mzgv`yo`z
vmap <A-Up> :m'<-2<cr>`>my`<mzgv`yo`z

" clear the search buffer pressing ,/
nmap <silent> ,/ :nohlsearch<CR>

" help search to resolve merge conflicts
nmap ,/m /<<<<<<<\\|=======\\|>>>>>>><CR>

" show/hide NERDTree pressing F2
map <F2> :NERDTreeToggle<CR>

" pressing F3 before paste code will avoid autoident
set pastetoggle=<F3>

" pressing F4 switch mouse action between vim and terminal
map <F4> :call SwitchMouse()<CR>

" reload all opened files pressing F5
nmap <F5> :tabdo windo edit<CR>

" show/hide TagBar pressing F8
nmap <F8> :TagbarToggle<CR>

" :wsudo to save a protected file
cab wsudo w !sudo tee %

" set correct color set in terminal
if !has("gui_running")
    set t_Co=256
endif

au BufRead,BufNewFile *.pro     setfiletype make

" include pathogen
call pathogen#infect()
call pathogen#helptags()

" OmniCppComplete
let OmniCpp_ShowPrototypeInAbbr=1 " show function parameters
let OmniCpp_MayCompleteScope=1    " autocomplete after ::

syntax on
filetype plugin on

colorscheme wombat


""""""""""""""""""""""""""""""""""""""""""
"           Helper functions             "
""""""""""""""""""""""""""""""""""""""""""
fun! SwitchMouse()
    if &mouse == ""
        let &mouse = "a"
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction
