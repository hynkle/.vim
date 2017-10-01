" Make Save leave edit mode
macmenu File.Save  key=<nop>
map <D-s> :w<CR>
imap <D-s> <ESC>:w<CR>

" turn off toolbar and scrollbars
set guioptions+=TlRLrb
set guioptions-=TlRLrb

" use whole screen when in fullscreen
set fuoptions=maxvert,maxhorz 

colorscheme jellybeans

set guifont=Menlo:h12

set visualbell

" This is to prevent giant pop-up tooltips in MacVim when hovering
" over things in Ruby code.  I think it's the output of ri, and it's
" not helpful for me.
" I'd ideally just set noballooneval to turn them off entirely,
" but (at least in MacVim) it just gets reenabled by netrw.vim in the
" application package.
" Workaround: just make it take forever for the balloons to pop up,
" and hopefully your mouse will have moved by then.
set balloondelay=100000
