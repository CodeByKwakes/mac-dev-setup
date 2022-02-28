#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Uninstalling"
# ------------------------------------------------------------------------------

# oh-my-zsh""
if has_path ".oh-my-zsh"; then
  get_consent "Do you want to uninstall oh-my-zsh"
  if has_consent; then
    e_pending "Uninstalling oh-my-zsh"
    uninstall_oh_my_zsh
    test_path ".oh-my-zsh"
  fi
fi

#ZSH
if has_command "zsh"; then
  get_consent "Do you want to uninstall zsh"
  if has_consent; then
    e_pending "Uninstalling zsh"
    brew uninstall zsh
    test_command "zsh"
  fi
fi

# Uninstall Homebrew
if has_command "brew"; then
  get_consent "Do you want to uninstall Homebrew"
  if has_consent; then
    e_pending "Uninstalling Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
    test_command "brew"
  fi
fi
