" pathogen
execute pathogen#infect()
execute pathogen#helptags()

" basics
set nocompatible
filetype plugin on
syntax enable
set autoindent
set encoding=utf-8
set number
set relativenumber
set background=dark
colorscheme solarized
hi Normal ctermbg=NONE guibg = NONE
let g:airline_theme='raven'
let g:airline_powerline_fonts=1
set shiftwidth=4
set tabstop=4
noremap ww :w<CR>
noremap qq :q<CR>
let g:powerline_pycmd="py3"
set laststatus=2

" syntastic
let g:syntastic_python_checkers = ['flake8']
set statusline+=%#warningmsg#
set statusline+=%{syntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_log_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" splits
set splitbelow
set splitright

" split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
