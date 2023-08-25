 "Configuration file for vim
filetype plugin on
filetype on
"set mouse+=a
set lazyredraw
set maxmempattern=2000000
set omnifunc=syntaxcomplete#Complete
set autoread
set matchtime=1
set updatetime=50
set showcmd
set nocompatible
set backspace=2
set ic
set undofile
set undodir=~/.vim/undo-dir/
set noswapfile
set nobackup
" set list
syntax enable
set hidden
"set guicursor=
set termguicolors
set scrolloff=8
set cmdheight=2
"set guifont=hack:h13
set guifont=Droid\Sans\Mono:h13
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup
set signcolumn=yes
"set foldmethod=syntax
"set foldlevelstart=99
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
" Solidity
Plug 'tomlion/vim-solidity'

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
"Plug 'aserebryakov/vim-todo-lists'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'stephpy/vim-yaml'
Plug 'matze/vim-move'
Plug 'Townk/vim-autoclose'
"Plug 'fatih/molokai'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
"Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mhinz/vim-startify'
"Plug 'posva/vim-vue'
"Plug 'ap/vim-css-color'
Plug 'mbbill/undotree'
"Plug 'itchyny/vim-cursorword'
Plug 'wakatime/vim-wakatime'
"Plug 'uber/prototool', { 'rtp':'vim/prototool' }
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"Plug 'vim-scripts/YankRing.vim'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'mattn/emmet-vim'
Plug 'preservim/tagbar'
"Plug 'arcticicestudio/nord-vim'
"Plug 'rakr/vim-one'
"Plug 'fioncat/vim-oceanicnext'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'masukomi/vim-markdown-folding'
Plug 'Rigellute/rigel'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Plug 'simnalamburt/vim-mundo'
"Plug 'rcarriga/nvim-notify'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" AI plug
" Plug 'Exafunction/codeium.vim'



"bazel
Plug 'google/vim-maktaba'
"Plug 'bazelbuildivim-bazel'
Plug 'ruanyl/vim-gh-line'

Plug 'leafgarland/typescript-vim'
"Plug 'nvim-tree/nvim-web-devicons'
"Plug 'romgrk/barbar.nvim'

"Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()


" <leader>f will format and fix your current file.
" Change to PrototoolFormat to only format and not fix.
"nnoremap <silent> <leader>f :call PrototoolFormatFix()<CR>

"let g:indentLine_setColors = 0

let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'dracula', 'component_function': {'gitbranch': 'FugitiveHead'}}
" Set lightline.vim theme
"color dracula
colorscheme dracula
"set background=dark
"color molokai
"let g:molokai_original = 2

" vim-go highlight
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_extra_types = 1
let g:go_fmt_command = "goimports"
let g:move_key_modifier = "C"
let g:go_null_module_warning = 0
"let g:godef_split=2

let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

let g:rainbow_active = 1

" Set NERDTree for display
map <C-g> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=45
let NERDChristmasTree=1
map <C-z> :UndotreeToggle<CR>

" setup easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" tagbar
nmap <F1> :TagbarToggle<CR>
let g:tagbar_width=40

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

"let g:lightline = {'colorscheme': 'rigel','active': {'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]}, 'component_function': {'gitbranch': 'FugitiveHead'}}

" Markdown preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = ''
" afater install then   :call mkdp#util#install() manually

nmap <C-x> <Plug>MarkdownPreview

" yankring config
"let yankring_min_element_length = 2
"map <C-h> :YRShow<CR>
"
"prototool
"let g:ale_linters = {'go': ['golint'], 'proto': ['prototool-lint'],}
"let g:ale_lint_on_text_changed = 1

" fixer npm install -g prettier
let g:ale_fixter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'vue': ['prettier'], 'css': ['prettier'], 'javascript': ['prettier'], 'typescript': ['prettier', 'eslint'],}
let g:ale_fix_on_save = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" fzf config
let g:fzf_preview_window = ['right:70%', 'ctrl-/']
let g:python3_host_prog = "/usr/bin/python3"
nnoremap <silent> <c-p> :Files <CR>

" disable Page Up/Down
map <PageUp> <Nop>
map <PageDown> <Nop>

" disable backspace/delete
inoremap <BS> <Nop>
inoremap <Del> <Nop>

" paste
xnoremap p pgvy

" rust
let g:go_fmt_experimental = 1
let g:coc_global_extensions = ['coc-tsserver']
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
"
set splitright

" command shortcut
cnoreabbrev BL Git blame

":CocInstall coc-pyright
