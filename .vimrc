" Configuration file for vim
filetype plugin on
filetype on
set omnifunc=syntaxcomplete#Complete
" set modelines=0
set modeline
set autoread
set matchtime=1
set updatetime=100
set showcmd
set nobackup
set noswapfile
set nocompatible
set backspace=2
set ic
" set list
syntax enable
set guifont=hack:h13
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set signcolumn=yes

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
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
let g:indentLine_setColors = 0
" Python
Plug 'Chiel92/vim-autoformat'
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'klen/python-mode'
Plug 'psf/black', { 'commit': 'ce14fa8b497bae2b50ec48b3bd7022573a59cdb1' }

" proto buf uber style
Plug 'uber/prototool', { 'rtp':'vim/prototool'  }



call plug#end()

color dracula

" Set lightline.vim theme
let g:lightline = { 'colorscheme': 'one',}
let skip_defaults_vim=1
" not display in init
let NERDTreeShowHidden=1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:completor_gocode_binary = '/Users/linxing/go/bin/gocode'
" let g:go_bin_path = '/Users/linxing/go/bin'
let g:move_key_modifier = "C"
" autocmd vimenter * NERDTree
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
autocmd BufWritePre *.py execute ':Black'

let g:black_skip_string_normalization = 1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" not auto init python by jedi
" let g:jedi#auto_initialization = 0
" let g:jedi#popup_on_dot = 0


" python static check and code style
let g:ale_linters_explicit = 1
let g:ale_linters = {
    \   'python': ['black', 'mypy', 'vulture'],
\}
let g:ale_python_vulture_options = '--min-confidence 80 --ignore-names "_ign*" --exclude "*pb2.py,*pb2_grpc.py"'
let g:ale_python_mypy_options =
    \ '--ignore-missing-imports --follow-imports skip --disallow-untyped-defs'.' '.
    \ '--disallow-untyped-decorators --strict-optional --warn-unused-ignores'.' '.
    \ '--no-implicit-optional --warn-redundant-casts'
" Only run fixers named in ale_fixers settings.
let g:ale_fixers_explicit = 1
let g:ale_fixers = {
    \   'python': ['black'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {
    \   'proto': ['prototool'],
\}

let g:lightline = { 'colorscheme': 'one',}
let g:go_version_warning = 0