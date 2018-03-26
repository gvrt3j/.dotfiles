" Colorscheme
set background=dark
try
    colorscheme noctu
catch
endtry

" Line numbers
set number

" Highlight cursor
set cursorline

" No line wrapping
set nowrap

" Tree style file explorer
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25

" Show invisibles
set list
set listchars+=tab:>·
set listchars+=trail:·
set listchars+=extends:>
set listchars+=precedes:<
set listchars+=nbsp:~
set listchars+=eol:¬