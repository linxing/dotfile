" Configuration file for vim
filetype plugin on
filetype on
set omnifunc=syntaxcomplete#Complete
set modelines=0
set autoread
set matchtime=1
set updatetime=100
set showcmd
set nobackup
set noswapfile
set nocompatible
set backspace=2
set ic
syntax enable
set guifont=hack:h12
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

"goimports settings
"autocmd BufWritePre *.go :Fmt

" Basic Config
set tabstop=4
set showmatch
set ruler
set cursorline
set cursorcolumn
set relativenumber
set number
set laststatus=2
set wildmenu
set wildmode=longest:list,full
set hlsearch
set incsearch
set smartcase

" Pluging
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'aserebryakov/vim-todo-lists'
Plug 'maralla/completor.vim'
Plug 'fatih/vim-go'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'stephpy/vim-yaml'
Plug 'matze/vim-move'
Plug 'Townk/vim-autoclose'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Python
Plug 'Chiel92/vim-autoformat'
Plug 'davidhalter/jedi-vim'

call plug#end()

color dracula

" Set lightline.vim theme
let g:lightline = { 'colorscheme': 'one',}
let skip_defaults_vim=1
let NERDTreeShowHidden=1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:completor_gocode_binary = '/Users/linxing/go/bin/gocode'
let g:go_bin_path = '/Users/linxing/go/bin'
let g:move_key_modifier = "C"
autocmd vimenter * NERDTree
let g:go_null_module_warning = 0
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
let g:rainbow_active = 1

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1


" Set NERDTree for display
map <C-g> :NERDTreeToggle<CR>

" Auto Pep8 format when saving file
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" not auto init python by jedi
let g:jedi#auto_initialization = 0


let g:lightline = { 'colorscheme': 'one',}
let g:go_version_warning = 0
