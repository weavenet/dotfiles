" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
" set history=50        " keep 50 lines of command line history
" set ruler           " show the cursor position all the time
" set showcmd           " display incomplete commands
" set incsearch       " do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" Enabling wraping for everything
set wrap

" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Set File type to 'text' for files ending in .txt
    autocmd BufNewFile,BufRead *.txt setfiletype text

    " Enable soft-wrapping for text files
    autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        au!

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        autocmd BufReadPost *
                    \ if line("'\"") > 0 && line("'\"") <= line("$") |
                    \   exe "normal g`\"" |
                    \ endif

        " Automatically load .vimrc source when saved
        autocmd BufWritePost .vimrc source $MYVIMRC

    augroup END
else
    set autoindent " always set autoindenting on
endif

" Always display the status line
set laststatus=2

" No Help, please
nmap <F1> <Esc>

" Local config
if filereadable(".vimrc.local")
    source .vimrc.local
endif

" case only matters with mixed case expressions
set ignorecase
set smartcase

" prett F2 to toggle out of paste mode
set pastetoggle=<C-p>

" Always use this plugin
execute pathogen#infect()

" Set syntax highligin on
syntax on

" Convert all tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Stronger encryption
set cm=blowfish2
set viminfo=
set nobackup
set nowritebackup

" Global macros
let @r = ":reg\n"
