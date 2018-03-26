bindkey -e

bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward

setopt auto_cd
setopt extended_glob
setopt correct

autoload -Uz select-word-style
select-word-style bash
