EDITOR=nvim
VISUAL=$EDITOR
PAGER=less
BROWSER=google-chrome-stable
PATH=$PATH:$HOME/bin

export EDITOR VISUAL PAGER BROWSER PATH

# Set GPG TTY
export GPG_TTY=$(tty)

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null
