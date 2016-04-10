set shiftwidth=2
set tabstop=2
syntax on
set nu
set colorcolumn=80
set expandtab
set autoindent
set backspace=2

set showcmd
set showmode
set ruler
set hls
set ignorecase
set smartcase

set nofoldenable

" Clears highlights (Ctrl + L)
nnoremap <silent> <C-l> :nohl<CR><C-l>

execute pathogen#infect()
"colorscheme hybrid

au FileType python source ~/.vim/ftplugin/python.vim
au FileType javascript source ~/.vim/ftplugin/javascript.vim

let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_html_checkers = ['']

let NERDTreeIgnore = ['\.pyc$']

filetype plugin indent on
