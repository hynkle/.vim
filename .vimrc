" no vi compatibility
set nocompatible

" load bundles via pathogen
call pathogen#infect()

" syntax highlighting
syntax on

" register extra extension => syntax mappings
au BufRead,BufNewFile *.hamljs set filetype=haml
au BufRead,BufNewFile *.hamlbars set filetype=haml

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

" tab complete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

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

