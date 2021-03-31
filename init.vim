" **************************************************************************** "
"                                                                              "
"                                                         ::::::::             "
"    init.vim                                           :+:    :+:             "
"                                                      +:+                     "
"    By: nschat <nschat@student.codam.nl>             +#+                      "
"                                                    +#+                       "
"    Created: 2019/10/28 17:46:48 by nschat        #+#    #+#                  "
"    Updated: 2021/01/13 21:20:15 by nschat        ########   odam.nl          "
"                                                                              "
" **************************************************************************** "

"Plugin directory
call plug#begin('~/.local/share/nvim/plugged')

"Neoterm
Plug 'kassio/neoterm'

"Ncm2 autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

"Ncm2 Sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax'
Plug 'shougo/neco-syntax'
Plug 'shougo/neco-vim'
Plug 'ncm2/ncm2-neoinclude'
Plug 'shougo/neoinclude.vim'
Plug 'fgrsnau/ncm2-otherbuf'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-racer'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-vim'

"Debugger
Plug 'sakhnik/nvim-gdb', { 'do': ':UpdateRemotePlugins' }

"Todo lists
Plug 'aserebryakov/vim-todo-lists'

"Markdown plugins
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

"Linter
Plug 'dense-analysis/ale'
"Plug 'vim-syntastic/syntastic'

"Align tool
Plug 'junegunn/vim-easy-align'

"Rainbow parentheses
Plug 'junegunn/rainbow_parentheses.vim'

"Something with comments
Plug 'scrooloose/nerdcommenter'

"Tree explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Fugitive for merge conflicts
Plug 'tpope/vim-fugitive'

"GDB/LLDB wrapper
Plug 'sakhnik/nvim-gdb', {'do': ':!./install.sh \| UpdateRemotePlugins'}

"Teach a vim to fish
Plug 'dag/vim-fish'

"Proper python syntax highlighting
Plug 'vim-python/python-syntax'

"End of plug block
call plug#end()

"Remap nvim-gdb keybinds
function! NvimGdbNoTKeymaps()
  tnoremap <silent> <buffer> <esc> <c-\><c-n>
endfunction

let g:nvimgdb_config_override = {
  \ 'key_next': 'n',
  \ 'key_step': 's',
  \ 'key_finish': 'f',
  \ 'key_continue': 'c',
  \ 'key_until': 'u',
  \ 'key_breakpoint': 'b',
  \ 'set_tkeymaps': "NvimGdbNoTKeymaps",
  \ }

"Disable folding for vim-markdown
let g:vim_markdown_folding_disabled = 1

"Automatically start markdown preview / global markdown preview
let g:mkdp_auto_start = 1
let g:mkdp_command_for_global = 1

"Settings for ncm2
let g:ncm2_pyclang#library_path = '/usr/lib64/libclang.so.10'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

"Add include/ & libft/include to syntastic include dirs
"let g:syntastic_c_include_dirs = ["include"]

"Enable makefile dry-runs
let g:ale_linters = {'c': ['gcc'], 'c++': ['g++'] }
let g:ale_c_parse_makefile = 1

"Enable full python syntax highlighting
let g:python_highlight_all = 1

"Manpage settings
let b:man_default_sections = '3,2'
let g:man_hardwrap = 1

"Enable rainbow parentheses
autocmd VimEnter * RainbowParentheses

"Set shell to fish
set shell=fish

"Enable syntax highlighting
syntax on

"Enable mouse
set mouse=a

"Break column width to 80
set linebreak
set showbreak=+++
"set wrap
"set textwidth=80

"Highlight 80th column using subtle line
set colorcolumn=80
hi ColorColumn ctermbg=8

"Display white spaces
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

"Change ncm2 menu color
hi Pmenu ctermbg=0 ctermfg=7
hi PmenuSel ctermbg=233 ctermfg=12

"Split to right/below instead of left/up by default
set splitright
set splitbelow

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
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
	autocmd BufNewFile Makefile Stdheader
	autocmd BufNewFile *.{sh,fish,c,h,cpp,hpp} Stdheader
	autocmd BufWritePost *.{sh,fish} !chmod +x <afile>
	autocmd BufEnter *.{c,h} hi OverLength ctermbg=red ctermfg=white | match OverLength /\%81v.\+/
	autocmd BufEnter *.todo call mkdp#util#open_preview_page()
augroup END

"Source Stdheader
source ~/.config/nvim/stdheader.vim
