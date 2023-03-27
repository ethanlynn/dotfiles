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
  echo 'done'
}

ensure_xdg_config_home_exists
update_symlinks
