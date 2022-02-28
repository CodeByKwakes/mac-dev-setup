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
      source ~/.bash_profile
      e_pending "which zsh"
      which zsh
      sudo sh -c "echo /usr/local/bin/zsh >> /etc/shells"
      # sudo sh -c "echo $(which zsh) >> /etc/shells"
      chsh -s /usr/local/bin/zsh
      # chsh -s $(which zsh)
      e_pending "showing shells"
      echo $SHELL
    fi
  fi
fi

if has_command "zsh"; then
  if ! has_path ".oh-my-zsh"; then
    get_consent "Install oh-my-zsh"
    if has_consent; then
      e_pending "Installing oh-my-zsh"
      # sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
      test_path ".oh-my-zsh"
      test_path ".zshrc"

      if has_path ".zshrc"; then
        append_to_zshrc "export PATH=/usr/local/bin:$PATH"
        append_to_zshrc "export EDITOR='code -n'"
        append_to_zshrc "export PAGER='less -f'"
        source ~/.zshrc
      fi

    fi
  fi
fi

if has_command "brew"; then

  # Install nvm
  if ! has_command "nvm"; then
    get_consent "Install nvm (Node via nvm)"
    if has_consent; then
      e_pending "Installing nvm"
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
      # curl https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
      # source ~/.bash_profile
      # source ~/.zshrc
      test_command "nvm"
      e_pending "nvm version"
      nvm -v
      e_pending "Installing node"
      # nvm ls-remote
      nvm install node --reinstall-packages-from=node
      nvm use node
      nvm alias default node
      test_command "node"
    fi
  fi

  # Install Git
  if ! has_command "git"; then
    get_consent "Install git"
    if has_consent; then
      e_pending "Installing git"
      brew install git
      test_command "git"
      test_command "which git"
      e_pending "git version"
      git --version
      e_pending "git configuration setup"
      git config --global user.name "Kwakes Prempeh"
      git config --global user.email "kwakesproject@gmail.com"
      touch ~/.gitignore_global
      git config --global core.excludesfile ~/.gitignore_global
      git config --global credential.helper osxkeychain
      git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    fi
  fi

  # Install Yarn
  if ! has_command "yarn"; then
    get_consent "Install yarn"
    if has_consent; then
      e_pending "Installing yarn"
      brew install yarn
      test_command "yarn"
    fi
  fi

fi

if has_command "brew" && has_command "zsh"; then

  if ! has_brew "zsh-autosuggestions"; then
    get_consent "Install zsh-autosuggestions"
    if has_consent; then
      e_pending "Installing zsh-autosuggestions"
      brew install zsh-autosuggestions
      append_to_zshrc "# Fish shell-like fast/unobtrusive autosuggestions for Zsh."
      append_to_zshrc "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
      source ~/.zshrc
      test_brew "zsh-autosuggestions"
    fi
  fi

  if ! has_brew "zsh-syntax-highlighting"; then
    get_consent "Install zsh-syntax-highlighting"
    if has_consent; then
      e_pending "Installing zsh-syntax-highlighting"
      brew install zsh-syntax-highlighting
      append_to_zshrc "# Fish shell-like syntax highlighting for Zsh."
      append_to_zshrc "# Warning: Must be last sourced!"
      append_to_zshrc "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
      source ~/.zshrc
      test_brew "zsh-syntax-highlighting"
    fi
  fi

  if ! has_brew "zsh-history-substring-search"; then
    get_consent "Install zsh-history-substring-search"
    if has_consent; then
      e_pending "Installing zsh-history-substring-search"
      brew install zsh-syntax-highlighting
      append_to_zshrc "# zsh-syntax-highlighting for Zsh."
      append_to_zshrc "source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
      source ~/.zshrc
      test_brew "zsh-history-substring-search"
    fi
  fi

fi

if has_command 'npm'; then
  get_consent "Upgrade npm"
  if has_consent; then
    e_pending "Upgrading npm"
    npm i -g npm@latest
    test_command "npm"
  fi
fi

echo "\r"

# ------------------------------------------------------------------------------
e_settled "Checking tools Completed"
# ------------------------------------------------------------------------------

echo "\r"

# if has_command "npm"; then
#   get_consent "Install/Upgrade serve (globally via npm)"
#   if has_consent; then
#     e_pending "Installing/Upgrading serve"
#     npm i -g serve@latest
#     test_command "serve"
#   fi
# fi

# if has_command "brew"; then
#   if ! has_command "watchman"; then
#     e_pending "Installing watchman"
#     brew install watchman
#     test_command "watchman"
#   fi
# fi

# if has_command "brew"; then
#   if ! has_command "trash"; then
#     e_pending "Installing trash"
#     brew install trash
#     test_command "trash"
#   fi
# fi

# if has_command "brew"; then
#   if ! has_command "git-flow"; then
#     get_consent "Install git-flow"
#     if has_consent; then
#       e_pending "Installing git-flow"
#       brew install git-flow
#       test_command "git-flow"
#     fi
#   fi
# fi

# if has_command "brew" && has_command "zsh"; then
#   if ! has_brew "powerlevel10k"; then
#     get_consent "Install powerlevel10k (CLI theming)"
#     if has_consent; then
#       e_pending "Installing powerlevel10k"
#       brew install romkatv/powerlevel10k/powerlevel10k
#       echo '# Theme configuration: PowerLevel10K' >>! ~/.zshrc
#       echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
#       echo '# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.' >>! ~/.zshrc
#       echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >>! ~/.zshrc
#       test_brew "powerlevel10k"
#       p10k configure
#     fi
#   fi
# fi
