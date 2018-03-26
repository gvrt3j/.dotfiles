if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent call system('curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	execute 'source  ~/.local/share/nvim/site/autoload/plug.vim'
	augroup plugsetup
		au!
		autocmd VimEnter * PlugInstall
	augroup end
endif

call plug#begin('~/.local/share/nvim/plugged')

" colors
Plug 'xero/vim-noctu'

" features
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lilydjwg/colorizer'

call plug#end()
