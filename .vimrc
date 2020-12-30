" Configuration file for vim
filetype plugin on
filetype on
set omnifunc=syntaxcomplete#Complete
set autoread
set matchtime=1
set updatetime=100
set showcmd
set nobackup
set noswapfile
set nocompatible
set backspace=2
set ic
set undofile
set undodir=~/.vim/undo-dir/
" set list
syntax enable
"set guifont=hack:h13
set guifont=Fira\ Code:h13
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set signcolumn=yes
set foldmethod=manual

" Basic Config
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
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
set noshowmode

" Pluging
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'aserebryakov/vim-todo-lists'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'stephpy/vim-yaml'
Plug 'matze/vim-move'
Plug 'Townk/vim-autoclose'
Plug 'fatih/molokai'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'posva/vim-vue'
Plug 'ap/vim-css-color'
Plug 'mbbill/undotree'
Plug 'vim-scripts/YankRing.vim'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'dracula/vim', { 'as': 'dracula' }
let g:indentLine_setColors = 0
call plug#end()

" Set lightline.vim theme
let g:lightline = { 'colorscheme': 'wombat'}
"color dracula
color molokai
let g:molokai_original = 2

" vim-go highlight
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_extra_types = 1
let g:go_fmt_command = "goimports"
let g:move_key_modifier = "C"
let g:go_null_module_warning = 0

let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

let g:rainbow_active = 1

" Set NERDTree for display
map <C-g> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

map <C-z> :UndotreeToggle<CR>

" setup easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:lightline = {'colorscheme': 'one',}

" Markdown preview
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" yankring config
let yankring_min_element_length = 2

" fixer npm install -g prettier
let g:ale_fixter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'vue': ['prettier'], 'css': ['prettier'], 'javascript': ['prettier'],}
let g:ale_fix_on_save = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
