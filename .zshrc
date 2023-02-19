# Load Node Version Manager.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Add Rust tools to $PATH.
export PATH="$HOME/.cargo/bin:$PATH"

# Add pipx tools to $PATH.
export PATH="$HOME/.local/bin:$PATH"

# Add VCPKG CMake Toolchain.
export CMAKE_TOOLCHAIN_FILE="$HOME/src/github.com/Microsoft/vcpkg/scripts/buildsystems/vcpkg.cmake"
