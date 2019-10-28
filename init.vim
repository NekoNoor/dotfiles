" **************************************************************************** "
"                                                                              "
"                                                         ::::::::             "
"    init.vim                                           :+:    :+:             "
"                                                      +:+                     "
"    By: nschat <nschat@student.codam.nl>             +#+                      "
"                                                    +#+                       "
"    Created: 2019/10/28 17:46:48 by nschat        #+#    #+#                  "
"    Updated: 2019/10/28 18:06:20 by nschat        ########   odam.nl          "
"                                                                              "
" **************************************************************************** "

"Plugin directory
call plug#begin('~/.local/share/nvim/plugged')

"Ncm2 autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

"Ncm2 Sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-syntax'
Plug 'shougo/neco-syntax'
Plug 'ncm2/ncm2-neoinclude'
Plug 'shougo/neoinclude.vim'
Plug 'fgrsnau/ncm2-otherbuf'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-vim'

"Linter
Plug 'vim-syntastic/syntastic'

"Something with comments
Plug 'scrooloose/nerdcommenter'

"Fugitive for merge conflicts
Plug 'tpope/vim-fugitive'

"GDB/LLDB wrapper
Plug 'sakhnik/nvim-gdb', {'do': ':!./install.sh \| UpdateRemotePlugins'}

"Teach a vim to fish
Plug 'dag/vim-fish'

"End of plug block
call plug#end()

"Settings for ncm2
let g:ncm2_pyclang#library_path = '/Library/Developer/CommandLineTools/usr/lib/'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

"Set shell to fish
set shell=fish

"Enable syntax highlighting
syntax on

"Enable mouse
set mouse=a

"Break column width to 80
set linebreak
set showbreak=+++

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

"Share clipboard with macOS
set clipboard=unnamedplus

"Add Stdheader to source/shell files and make shell executable
augroup scripts
	autocmd!
	autocmd BufNewFile Makefile Stdheader
	autocmd BufNewFile *.{sh,fish,c,h} Stdheader
	autocmd BufWritePost *.{sh,fish} !chmod +x <afile>
augroup END

"Source Stdheader
source /usr/share/vim/vim80/plugin/stdheader.vim