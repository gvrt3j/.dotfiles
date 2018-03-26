" Syntax
filetype indent plugin on
syntax enable

" Indentation
set smartindent
set autoindent
set noexpandtab
set tabstop=4
set softtabstop=-1
set shiftwidth=4
"
" Familiar backspace behaviour.
set backspace=indent,eol,start

" Respect case in searches only if search query contains upper-case chars.
set ignorecase
set smartcase
set infercase

" Other search tricks.
set hlsearch
set incsearch
set inccommand=split

" Hide buffer, don't kill.
set hidden

" Make it natural
set splitright
set splitbelow

" Clipboard integration.
set clipboard+=unnamedplus

" Set backup/undo/swap dirs.
set backupdir=~/.local/share/nvim/tmp/backups/
set undodir=~/.local/share/nvim/tmp/undo/

" Make the folders automatically if they don't already exist.
if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), "p")
endif

if !isdirectory(expand(&undodir))
	call mkdir(expand(&undodir), "p")
endif

" Make undo work after the file is closed.
set undofile
set undolevels=500
set undoreload=500

" Wildmenu. Show all suggestions.
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Search for files recursively 
set path+=**

" Performance
set ttyfast
set lazyredraw