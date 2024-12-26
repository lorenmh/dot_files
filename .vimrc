syntax on

set expandtab
set shiftwidth=2
set tabstop=2
set backspace=indent,eol,start
set softtabstop=2
set updatetime=100
set colorcolumn=80
set showcmd
set showmode
set ruler
set nu
set list
set listchars=tab:··,eol:$

set mouse=a

set hls
set ignorecase
set smartcase

set foldmethod=syntax
set nofoldenable

autocmd Syntax * normal zR
autocmd BufNewFile,BufRead *.h setfiletype c

" Clears highlights (Ctrl + L)
nnoremap <silent> <C-c> :nohl<CR><C-l>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
set pastetoggle=<F10>

"set t_Co=256

set laststatus=2

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--format=default'

let g:syntastic_html_checkers = ['']

let g:syntastic_c_compiler_options = ' -Wno-deprecated'

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let NERDTreeIgnore = ['\.pyc$', '\.swo$', '\.swp$', '\.o$']
let NERDTreeShowHidden=1


if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


"colorscheme gotham
execute pathogen#infect()

filetype plugin indent on

"au BufRead,BufNewFile *.nginx set ft=nginx
"au BufRead,BufNewFile nginx.conf set ft=nginx

colorscheme jellybeans
highlight LineNr ctermbg=NONE
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight SpecialKey ctermbg=NONE
highlight ColorColumn ctermbg=240
