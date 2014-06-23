" equk.co.uk - vimrc file
" =======================

set encoding=utf-8
autocmd! bufwritepost .vimrc source %
call pathogen#infect()

filetype plugin on
filetype plugin indent on
filetype on
syntax on

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let mapleader = "," " rebind <Leader> key
set wildmode=list:longest " allow TAB completion
set autoread " autoreload file on changes
set tags=~/.vim/tags/tags

set mouse=a
set bs=2 " backspace
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Display of cursor etc
set cursorline
set ruler
set autoindent
set smartindent 

" code completion
set completeopt=menu

" use global system clipboard
set clipboard=unnamed

set history=700
set undolevels=700

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
" toggle paste formatting
set pastetoggle=<F2>

set hlsearch
set incsearch
set ignorecase
set smartcase

set nowrap " don't automatically wrap on load
set tw=79  " width of document (used by gd)
set fo-=t  " don't automatically wrap text when typing
set number " show line numbes

" highlight whitespace
" ====================
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
map <Leader>x :%s/\s\+$//

" Color scheme
" ============
set t_Co=256
color skittles_berry

set colorcolumn=80
" highlight ColorColumn ctermbg=233

" Load custom config files
" ========================
source ~/.vim/config/keymap.vim
source ~/.vim/config/plugins.vim
