" Goyo
"" Limelight bg color
let g:limelight_conceal_ctermfg = 8

"" Enter
function! s:goyo_enter()
	silent !tmux set status off
	silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
	set noshowmode
	set noshowcmd
	set scrolloff=999
	Limelight
endfunction

"" Leave
function! s:goyo_leave()
	silent !tmux set status on
	silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
	set showmode
	set showcmd
	set scrolloff=5
	Limelight!
endfunction

"" Exec
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Lightline
let g:lightline = {
			\ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
			\ 'subseparator': { 'left': '▒', 'right': '░' }
			\ }
