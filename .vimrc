filetype plugin indent on
syntax on

set shiftwidth=2
set tabstop=2
set backspace=2
set colorcolumn=80

set nu
"set expandtab
set mouse=a
set showcmd
set showmode
set ruler
set hls
set ignorecase
set smartcase
set list
set listchars=tab:··,eol:$

set foldmethod=syntax
set nofoldenable
autocmd Syntax * normal zR

"let g:python_version_2 = 1

" Clears highlights (Ctrl + L)
nnoremap <silent> <C-l> :nohl<CR><C-l>
set t_Co=256

set laststatus=2

"let g:airline#extensions#tabline#enabled = 1
let g:jellybeans_use_lowcolor_black = 0
"let g:jellybeans_background_color_256='231'

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"colorscheme Tomorrow-Night-Eighties
colorscheme jellybeans
"colorscheme seoul256-light

"let g:jellybeans_use_lowcolor_black = 0

"let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_html_checkers = ['']

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let NERDTreeIgnore = ['\.pyc$', '\.swo', '\.swp']
let NERDTreeShowHidden=1

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

execute pathogen#infect()
