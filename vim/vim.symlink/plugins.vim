" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.vim/plugged')

" ColorSchemes
Plug 'joshdick/onedark.vim'

" Utilities
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-fugitive' " git wrapper for vim. Push, pull, status, blame
Plug 'vim-airline/vim-airline' " statusline
Plug 'airblade/vim-gitgutter' " git gutter file status
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }         " fuzzy file finder
Plug 'junegunn/fzf.vim' " fuzzy file finder vim bindings
Plug 'mileszs/ack.vim' " search inside files using ack. Same as command line ack utility, but use :Ack
Plug 'ntpeters/vim-better-whitespace' " highlight extra whitespace
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux panes and vim splits
Plug 'vim-syntastic/syntastic' " Syntax checker

call plug#end()
