" no vi compatibility
set nocompatible

" load bundles via pathogen
call pathogen#infect()

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

" show trailing whitespace
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
:highlight ExtraWhitespace ctermbg=red guibg=red
" stop future colorscheme commands from clearing the highlight group:
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

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
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" enable matchit
runtime macros/matchit.vim



" _______________________________ DUBIOUS

set wildmenu
set wildmode=list:longest
