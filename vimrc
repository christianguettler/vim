" Documentation
    " Author:  Nathan Farrar
    " Email:   nathan.farrar@gmail.com
    " Website: http://www.oxseyn.com/
    " Update:  September 11, 2012

" Some of my Favorite VI Links

    " VIM home          http://www.vim.org/
    " VIM tips wiki     http://vim.wikia.com/wiki/Vim_Tips_Wiki
    " vimrc sample      http://www.vi-improved.org/vimrc.php
    " vim colorschemes  http://www.vi-improved.org/colors.php
    " pathogen home     https://github.com/tpope/vim-pathogen
    " great intro       http://blog.interlinked.org/tutorials/vim_tutorial.html
    " another vimrc     http://amix.dk/vim/vimrc.html
    " vim tricks        http://stackoverflow.com/questions/95072/what-are-your-favorite-vim-tricks/225852#225852
    " l2 grok vi        http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim

" Requirements & Installation

    " create necessary directories
        " mkdir ~/.vim
        " mkdir ~/.vim/backup
        " mkdir ~/.vim/swap
        " mkdir ~/.vim/notes

    " copy this vimrc file to ~/.vim/vimrc
    " symlink to it: ln -s ~/.vim/vimrc ~/.vimrc

    " install ctags
        " on ubuntu: sudo apt-get install exuberant-ctags

    " install vundle
        " git clone http://github.com/gmarik/vundle.git  ~/.vim/bundle/vundle

    " install vundle bundles
        " from in vim, call :BundleInstall

" Vundle Commands

    " :BundleList                   list configured bundles
    " :BundleInstall(!)             install(update) bundles
    " :BundleSearch(!)              search(or refresh cache first) for foo
    " :BundleClean(!)               confirm(or auto-approve) removal of unused bundles

    set nocompatible                " Explicitly disable VI compatibility
    filetype off                    " Required by vundle, not sure why
    set rtp+=~/.vim/bundle/vundle/  " Set the vundle directory
    call vundle#rc()                " Initiaize vundle plugin management

    " Bundles
    Bundle 'gmarik/vundle'
    Bundle 'taglist.vim'
    Bundle 'notes.vim'

    let g:notes_directory = '~/.vim/notes'
    let g:notes_suffix = '.note'

    filetype plugin on
    filetype plugin indent on

" General Settings

    syntax on                       " Enable syntax highlighting
    set autochdir                   " Always switch to current file directory
    set autowrite                   " Automatically save before commands like :next and :make
    set background=dark             " We prefer dark backgrounds
    set backspace=indent,eol,start  " Make backspacing more user-friendly
    set backup                      " Make backup files
    set backupdir=~/.vim/backup     " Put backup files here, to avoid system clutter
    set clipboard+=unnamedplus      " Clipboard register in XWindows
    set directory=~/.vim/swap       " Put swap files here, to avoid system clutter
    set fileformats=unix,dos,mac    " Support these fileformats, in this order
    set hidden                      " Hide buffers when they are abandoned
    set history=1024                " Keep 500 lines of history
    set ignorecase                  " Do case insensitive matching
    set incsearch                   " Incremental search
    set mouse=a                     " Enable mouse usage (all modes)
    set noerrorbells                " Disable all error bells.  (We enable visualbell though)
    set visualbell                  " We like to see a flash when we do something wrong
    set viminfo='10,\"100,:20,%,n~/.vim/.viminfo
        "       |   |     |   | |   Tell vim to remember certain things when we exit
        "       |   |     |   | +-- where to save the viminfo files
        "       |   |     |   +-- saves and restores the buffer list
        "       |   |     +-- up to 20 lines of command-line history will be remembered
        "       |   +-- will save up to 100 lines for each register
        "       +-- marks will be remembered for up to 10 previously edited files
    set whichwrap=b,s,h,l,<,>,~,[,] " Make textual wrapping more user-friendly.
        "             | | | | | | | | |
        "             | | | | | | | | +-- "]" Insert and Replace
        "             | | | | | | | +-- "[" Insert and Replace
        "             | | | | | | +-- "~" Normal
        "             | | | | | +-- <Right> Normal and Visual
        "             | | | | +-- <Left> Normal and Visual
        "             | | | +-- "l" Normal and Visual (not recommended)
        "             | | +-- "h" Normal and Visual (not recommended)
        "             | +-- <Space> Normal and Visual
        "             +-- <BS> Normal and Visual
    set wildmenu                    " Enables a menu at the bottom of the window.
    set wildignore=.dll,.o.obj,pyc  " Ignore these file types with the wild menu.
    set wildmode=list:longest,full  " 

" User Interface Configuration
    set cursorcolumn                " Enable column highlighting.
    set cursorline                  " Enable row underlining.
    highlight CursorColumn cterm=NONE ctermbg=black
    highlight CursorLine cterm=NONE ctermbg=black
    set nohlsearch                  " Start with hls turned off.
    set incsearch                   " Highlight as you type search phrase.
    set laststatus=2                " Always show the status line.
    set list                        " Display whitespace characters.
    set listchars=tab:>-,trail:-    " Tabs look like '>-' and spaces look like '-'
    set number                      " Enable line numbering
    set numberwidth=6               " Support up to 999999 lines
    set ruler                       " Always show the current postion along the bottom
    set scrolloff=10                " Show 10 lines at top or bottom whenever possible
    set showcmd                     " Show (partial) command in status line
    set showmatch                   " Show matching brackets
    set sidescrolloff=10            " Show 10 lines at left and right whenever possible
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer

" Text Formatting & Layout
    set expandtab                   " Replace tabs with spaces
    set ignorecase                  " Case insensitive
    set infercase                   " Infer case
    set nowrap                      " Disable visual wrapping of long lines
    set shiftround                  " Always round tabs to a multiple of shiftwidth
    set smartcase                   " Do smart case matching
    set shiftwidth=4                " Auto-indent amount when using cindent
    set softtabstop=4               " Amount of spaces in a soft tab
    set tabstop=4                   " Amount of spaces in a 'hard' tab

" Folding
    " Use indentation as the fold method, start with nothing folded
    " We save & load views automatically, so previous fold states are
    " remembered between sessions.  If we need more than 5 fold levels
    " we're doing something wrong.

    set foldmethod=indent
    set foldlevel=3
    set foldnestmax=5

" Key Mapping
    " Use comma as the leader key.
    let mapleader = ","
    let g:mapleader = ","

    " leader toggles
    map <leader>c :set cursorline! cursorcolumn!<cr>
    map <leader>h :set hlsearch!<cr>
    map <leader>l :set list!<cr>
    map <leader>u :TMiniBufExplorer<cr>
    map <leader>t :TlistToggle<cr>

    " python leader bindings
    map <leader>se :w<cr>:!clear<cr>:!/usr/bin/env python % <cr>
    map <leader>sb :w<cr>:!clear<cr>:!/usr/bin/env bpython -i % <cr>
    map <leader>ss :w<cr>:!clear<cr>:!/usr/bin/env pep8 % <cr>

    " vim leader bindings
    map <leader>ve :e! ~/.vimrc<cr>
    map <leader>vs :source $HOME/.vimrc<cr>

    " ctrl hjkl bindings for split navigation
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

    " ctrl np bindings for buffer navigation
    map <C-n> :bn<cr>
    map <C-p> :bp<cr>

    " space toggles folds
    nnoremap <space> za
    vnoremap <space> zf

" Save and load cursor position in buffers between session
    function! ResCur()
        if line("'\"") <= line("$")
            normal! g`"
            return 1
        endif
    endfunction

    augroup resCur
        autocmd!
        autocmd bufwinenter * call ResCur()
    augroup end

" Automatically resource the .vimrc file when saving
    autocmd! bufwritepost .vimrc source ~/.vimrc

" Save and load views between sessions (this includes folds)
    au bufwinleave * silent! mkview
    au bufwinenter * silent! loadview

" Template functionality
    function! InsertGenericHeader()
        execute '0r $HOME/.vim/templates/skeleton.'.expand("%:e")
    endfunction

    let $PROJECT_DIR = getcwd()
    function! InsertProjectHeader()
        execute '0r $PROJECT_DIR/vimtemplate.txt'
    endfunction

    augroup autoinsertheader
        au!
        autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/templates/skeleton.'.expand("<afile>:e")
    augroup end

