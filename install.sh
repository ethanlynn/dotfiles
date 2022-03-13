#!/bin/bash
#
# Install dotfiles.

xdg_config_home="${XDG_CONFIG_HOME:-${HOME}/.config}"
xdg_data_home="${XDG_DATA_HOME:-${HOME}/.local/share}"

ensure_xdg_config_home_exists() {
  if [[ ! -e "${xdg_config_home}" ]]; then
    echo -n 'creating XDG config home... '
    mkdir -p "${xdg_config_home}"
    echo 'done'
  fi
}

update_symlinks() {
  echo -n 'updating symlinks... '
  local wd="$(pwd)"
  ln -snf "${wd}/.zshrc" "${HOME}/.zshrc"
  ln -snf "${wd}/git" "${xdg_config_home}/git"
  ln -snf "${wd}/nvim" "${xdg_config_home}/nvim"
  ln -snf "${wd}/.vscode/settings.json" \
    "${HOME}/Library/Application Support/Code/User/settings.json"
  echo 'done'
}

install_vim_plug() {
  local vim_plug_path="${xdg_data_home}/nvim/site/autoload/plug.vim"
  local vim_plug_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  if [[ ! -e "${vim_plug_path}" ]]; then
    echo -n 'installing vim-plug for neovim... ' 
    curl -fLo "${vim_plug_path}" --create-dirs "${vim_plug_url}" &> /dev/null
    echo 'done'
  fi
}

ensure_xdg_config_home_exists
update_symlinks
install_vim_plug
