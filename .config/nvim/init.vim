call plug#begin()
Plug 'neomake/neomake'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'jdonaldson/vaxe'
call plug#end()

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
let g:airline_statusline_funcrefs = get(g:, 'airline_statusline_funcrefs', [])
let g:airline_theme='raven'
let g:airline_powerline_fonts=1
set shiftwidth=4
set tabstop=4
noremap ww :w<CR>
noremap qq :q!<CR>
let g:powerline_pycmd="py3"
set laststatus=2
set clipboard=unnamedplus

"neomake
call neomake#configure#automake('nrwi', 500)
let g:neomake_open_list = 2

" indentline
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" splits
set splitbelow
set splitright

" split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l