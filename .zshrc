# Add homebrew to $PATH on Apple Silicon.
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Add Rust tools to $PATH.
export PATH="$HOME/.cargo/bin:$PATH"

# Add pipx tools to $PATH.
export PATH="$HOME/.local/bin:$PATH"
