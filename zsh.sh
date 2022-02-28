#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "testing zsh"
# ------------------------------------------------------------------------------

if has_command "brew"; then
  if ! has_command "zsh"; then
    get_consent "Install zsh"
    if has_consent; then
      e_pending "Installing zsh"
      brew install zsh
      test_command "zsh"
      e_pending "which zsh"
      which zsh
      sudo sh -c "echo /usr/local/bin/zsh >> /etc/shells"
      chsh -s /usr/local/bin/zsh
      exec zsh -l
      echo $SHELL
    fi
  fi
fi
