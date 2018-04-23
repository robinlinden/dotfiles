" Totally sweet .vimrc by Robin Linden <dev@robinlinden.eu>


" Plugins
try
    source ~/.vim/vim-plug.vim
catch
endtry


" Editor looks
set number
set relativenumber
set cursorline
set showmatch


" Vim looks
set showcmd
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'
colorscheme gruvbox


" Vim functionality
"" Keybinds
let mapleader=","

""" Movement
nnoremap j gj
nnoremap k gk
set scrolloff=8

""" Misc
inoremap jk <esc>

"" File finding
set path=.,**
set wildmenu
set wildignore+=*.o,*.pyc

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nnoremap <leader>gg :grep<space>
nnoremap <leader>gl :grep!<space>
nnoremap <leader>gw :grep "\b<cword>\b" .<CR>
nnoremap <leader>gW :grep <cword> .<CR>
nnoremap <leader>go :copen<CR>
nnoremap <leader>gn :cn<CR>
nnoremap <leader>gp :cp<CR>

""" Improve grep
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --line-numbers\ --column
endif

"" Backup, swap, undo
set backupdir=~/.vim/backup// " Maybe they'll fix this bug eventually.
set backup
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

"" Misc
set lazyredraw
filetype plugin indent on

"" Splits
set splitbelow
set splitright

" Indentation settings
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab


" Folding
set foldenable
set foldlevelstart=99 " Open all folds by default
set foldmethod=indent
"" zM, zR, and za are useful commands. Remember them.

