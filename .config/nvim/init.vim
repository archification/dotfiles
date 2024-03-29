execute pathogen#infect()

" disable useless keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" basics
set nocompatible
let mapleader = "\<Space>"
filetype plugin indent on
syntax on
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
set expandtab
noremap ww :w<CR>
noremap qq :q!<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
let g:powerline_pycmd="py3"
set laststatus=2
set clipboard=unnamedplus

" neomake
" call neomake#configure#automake('nrwi', 500)
let g:neomake_open_list = 2
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E501'], }
noremap wr :Neomake cargo<CR>
augroup my_neomake_cmds
	autocmd!
	autocmd BufWritePost *.rs Neomake! cargo
augroup END

" YouCompleteMe
let g:ycm_semantic_triggers = {
    \'elm' : ['.'],
    \}

" indentline
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = ""

" nerdtree
noremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" undotree
nnoremap <silent> <Leader>u :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=$HOME/.undodir
    set undofile
endif

" splits
set splitbelow
set splitright

" split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" pdf stuff
map <leader>c :w! \| !compiler.sh <c-r>%<CR>
map <leader>p :!opout.sh <c-r>%<CR><CR>
autocmd VimLeave *.tex !texclear.sh %
