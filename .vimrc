" no vi compatibility
set nocompatible

" syntax highlighting
syntax on

" filetype detections, plugins, and indentation
filetype on
filetype plugin on
filetype indent on

let mapleader = ","

" wrapping
set nowrap

" highlight the line the cursor is on
set cursorline

" line numbers
set number

" longer history
set history=1000

" tab behavior
set autoindent
set expandtab     " spaces
set smarttab      " use shiftwidth at beginning of lines (tabstop/softtabstop is used elsewhere)
set shiftwidth=2
set tabstop=2

" split toward the bottom right
set splitbelow
set splitright

" previous/next buffer
nmap <C-n> :bn<CR>
nmap <C-p> :bp<CR>

" store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" git blame
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" taming search and moving
" from http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" enable matchit
runtime macros/matchit.vim

" stop the obnoxious twitching of the vim-json quote-concealing formatter
let g:vim_json_syntax_conceal = 0

" _______________________________ DUBIOUS

set wildmenu
set wildmode=list:longest


" _______________________________ PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/wting/rust.vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/hail2u/vim-css3-syntax.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/tpope/vim-surround.git'
call plug#end()