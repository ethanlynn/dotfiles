# Load Node Version Manager.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Load Python Version Manager.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Add Rust tools to $PATH.
export PATH="$HOME/.cargo/bin:$PATH"

# Add $GOPATH/bin to $PATH.
export PATH="$(go env GOPATH)/bin:$PATH"

# A few useful aliases.
alias la='ls -aF'
alias ll='ls -alhF'
alias cdethanlynn='cd ~/src/github.com/ethanlynn'
alias codedotfiles='code ~/src/github.com/ethanlynn/dotfiles'
