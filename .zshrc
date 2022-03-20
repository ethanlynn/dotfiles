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

# Use Starship prompt.
eval "$(starship init zsh)"

# A few useful aliases.
alias ls='ls -aF'
alias ll='ls -alhF'
alias cdethanlynn='cd ~/src/github.com/ethanlynn'
alias cdstride='cd ~/src/github.com/stridetherapy' 
alias dotfiles='code ~/src/github.com/ethanlynn/dotfiles'
