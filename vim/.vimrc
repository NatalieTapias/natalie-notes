" Hybrid Line Numbers with focus 
set number relativenumber

" Save the buffer whenever text is changed
autocmd TextChanged,TextChangedI <buffer> silent write

" Disable error bell
set belloff=all

"------------------
" Syntax and Indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them 

"------------------
" Editing configuration
"------------------
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent  

" smart case-sensitive search
set ignorecase
set smartcase

" enable mouse mode (scrolling, selection, etc)
set mouse+=a

