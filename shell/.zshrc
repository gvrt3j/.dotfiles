# ~/.zshrc

[[ -f ~/.zprofile ]] && source ~/.zprofile

# Prompt
autoload -Uz promptinit && promptinit
prompt walters

# Editing
bindkey -e

autoload -Uz select-word-style && select-word-style bash

bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward

setopt extended_glob

# History
HISTSIZE=9001
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space

# Aliases
alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias l1='ls -1'
alias grep='grep --color=auto'
alias less='less -R'
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

# Completion
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

zstyle ':completion:*' menu yes select
zstyle ":completion:*:commands" rehash true
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

zstyle ":completion:*:*:kill:*:processes" list-colors "=(#b) #([0-9]#)*=0=01;31"
zstyle ":completion:*:kill:*" command "ps -u $USER -o pid,%cpu,tty,cputime,cmd"

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
