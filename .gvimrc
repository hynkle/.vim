" Make Save leave edit mode
macmenu File.Save  key=<nop>
map <D-s> :w<CR>
imap <D-s> <ESC>:w<CR>

" turn off toolbar and scrollbals
set guioptions+=TlRLrb
set guioptions-=TlRLrb

" use whole screen when in fullscreen
set fuoptions=maxvert,maxhorz 

colorscheme jellybeans

set guifont=DejaVu\ Sans\ Mono:h12

set visualbell
