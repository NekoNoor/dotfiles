"Plugin directory
call plug#begin('~/.local/share/nvim/plugged')

"Autocomplete
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-bufword'

"Required for ncm2
Plug 'roxma/nvim-yarp'

"Syntastic
Plug 'vim-syntastic/syntastic'

"NERDCommenter
Plug 'scrooloose/nerdcommenter'

"Fugitive for merge conflicts
Plug 'tpope/vim-fugitive'

"End of plug block
call plug#end()

"Enable python3
let g:python3_host_prog='/usr/bin/python3'

"Set ncm2 clang path
let g:ncm2_pyclang#library_path='/usr/lib/libclang.so'

"Ncm2PopupOpen
set completeopt=noinsert,menuone,noselect

"Enable syntax highlighting
syntax on

"Enable mouse
set mouse=a

"Break column width to 80
set linebreak
set showbreak=+++
"set columns=80

"Highlight 80th column using subtle line
set colorcolumn=80
hi ColorColumn ctermbg=8

"Change ncm2 menu color
hi Pmenu ctermbg=0 ctermfg=7
hi PmenuSel ctermbg=233 ctermfg=12

"Split to right instead of left by default
set splitright

"Hybrid line numbers and ruler
set number
set relativenumber
set ruler

"Activate automatic indentation
filetype off
filetype plugin indent on
set smartindent
set autoindent

"Non-expanded, 4-wide tabulations
set tabstop=4
set shiftwidth=4
set noexpandtab

"Real-world encoding
set encoding=utf-8

"Interpret modelines in files
set modelines=1

"Do not abandon buffers
set hidden

"More useful backspace behavior
set backspace=indent,eol,start

"Use statusbar on all windows
set laststatus=2

"Better search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"Break at word instead of character
set linebreak

"Save undo history to file
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=1000
set undoreload=10000

"Add Shebang to *.sh files and make executable
augroup scripts
    autocmd!
    autocmd BufNewFile *.sh Stdheader
    autocmd BufWritePost *.sh !chmod +x <afile>
    autocmd BufNewFile *.fish Stdheader
    autocmd BufWritePost *.fish !chmod +x <afile>
augroup END

"Add 42 header to *.c/*.h files
augroup cfiles
    autocmd!
    autocmd BufNewFile *.c Stdheader
    autocmd BufNewFile *.h Stdheader
	autocmd BufRead,BufNewFile *.c setlocal textwidth=80
	autocmd BufRead,BufNewFile *.h setlocal textwidth=80
augroup END

"Enable ncm for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

"42 Stdheader
source ~/.config/nvim/header.vim
