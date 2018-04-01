alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias cower='cower --color=auto'
alias ytdl='youtube-dl -o "%(title)s.%(ext)s" -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]"'

man() {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}
