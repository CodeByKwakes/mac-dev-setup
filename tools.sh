#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Checking tools"
# ------------------------------------------------------------------------------


if has_command "brew"; then
  if ! has_command "zsh"; then
    get_consent "Install zsh"
    if has_consent; then
      e_pending "Installing zsh"
      brew install zsh
      test_command "zsh"
    fi
  fi
fi

if has_command "zsh"; then
  if ! has_path ".oh-my-zsh"; then
    get_consent "Install oh-my-zsh"
    if has_consent; then
      e_pending "Installing oh-my-zsh"
      curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
      test_path ".oh-my-zsh"
    fi
  fi
fi

if has_command "brew"; then
  if ! has_command "nvm"; then
    get_consent "Install nvm (Node via nvm)"
    if has_consent; then
      e_pending "Installing nvm"
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
      test_command "nvm"
    fi
  fi
fi


if has_command "brew"; then
  if ! has_command "git"; then
    get_consent "Install git"
    if has_consent; then
      e_pending "Installing git"
      brew install git
      test_command "git"
    fi
  fi
fi

if has_command "brew"; then
  if ! has_command "yarn"; then
    get_consent "Install yarn"
    if has_consent; then
      e_pending "Installing yarn"
      brew install yarn
      test_command "yarn"
    fi
  fi
fi
