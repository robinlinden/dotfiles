" Totally sweet .vimrc by Robin Linden <dev@robinlinden.eu>


" Plugins
try
    source ~/.vim/vim-plug.vim
catch
endtry


" Editor looks
set number
set cursorline
set showmatch


" Vim looks
set showcmd
colorscheme elflord


" Vim functionality
"" Keybinds
let mapleader=","

""" Movement
nnoremap j gj
nnoremap k gk

""" Misc
inoremap jk <esc>

"" File finding
set wildmenu

"" Searching
set hlsearch
set incsearch
nnoremap <leader><space> :nohlsearch<CR>

"" Backup, swap, undo
set backupdir=~/.vim/backup// " Maybe they'll fix this bug eventually.
set backup
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

"" Misc
set lazyredraw
filetype indent on


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

