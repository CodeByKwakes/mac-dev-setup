# mac-dev-setup

- [mac-dev-setup](#mac-dev-setup)
    - [Defaults](#defaults)
      - [General](#general)
      - [Dock](#dock)
      - [Keyboard](#keyboard)
      - [Security and Privacy](#security-and-privacy)
      - [Sharing](#sharing)
      - [Users & Groups](#users--groups)
      - [Create Dock spacers:](#create-dock-spacers)
      - [Create `~/Pictures/Screenshots` folder:](#create-picturesscreenshots-folder)
      - [Create `~/Workspace` folder:](#create-workspace-folder)
      - [MacOS Software Update:](#macos-software-update)
      - [Installing xcode-select (CLI tools):](#installing-xcode-select-cli-tools)
      - [Installing brew (Homebrew):](#installing-brew-homebrew)
      - [Install Brew Packages](#install-brew-packages)
      - [Zsh](#zsh)
  - [Oh-My-Zsh](#oh-my-zsh)
    - [Install the Oh My Zsh plugins below](#install-the-oh-my-zsh-plugins-below)
  - [Install `nvm`](#install-nvm)
    - [Install Packages Globally](#install-packages-globally)
  - [Install Git](#install-git)
### Defaults

> _macOS Settings_

#### General

*   Set Dark mode
*   Make Google Chrome default browser

#### Dock

*   Automatically hide and show Dock
```sh
defaults write com.apple.dock autohide -boolean true && \
killall Dock
```
*   Show indicators for open applications

#### Keyboard

*   Key Repeat -> Fast
*   Delay Until Repeat -> Short
*   Disable "Correct spelling automatically"
*   Disable "Capitalize words automatically"
*   Disable "Add period with double-space"
*   Disable "Use smart quotes and dashes"

#### Security and Privacy

*   Allow apps downloaded from App Store and identified developers
*   Turn FileVault On (makes sure SSD is securely encrypted)

#### Sharing

*   Change computer name
*   Make sure all file sharing is disabled

#### Users & Groups

*   Add "Rectangle" to Login items

#### Create Dock spacers:

```sh
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && \
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && \
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && \
killall Dock
```

<!-- #### Autohide Dock:

```sh
defaults write com.apple.dock autohide -boolean true && \
killall Dock
``` -->

#### Display hidden Finder files/folders:

```sh
defaults write com.apple.finder AppleShowAllFiles -boolean true && \
killall Finder
```
> _Finder Directory Structure & Hierarchy_

```
- AirDrop
- Recents
- Applications
- Desktop
- Documents
- Downloads
- Pictures
  - Screenshots   // all screenshots live here
- <user-directory>, i.e., “jsmith”
  - Workspace
    - ___Space___   // all development related configuration, contents and settings live here
    - Development      // all development projects live here
    - Projects      // all development projects live here
    - Profile
      - Avatar     // profile and social pictures
      - Wallpaper  // (optional) wallpapers directory
      - Refs       // photo id, resume, or essential quick references live here
```

#### Create `~/Pictures/Screenshots` folder:

```sh
mkdir -p ${HOME}/Pictures/Screenshots
```

```sh
# Save screenshots to the Pictures/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"
```


#### Create `~/Workspace` folder:

```sh
mkdir -p ${HOME}/Workspace/{___Space___,Development,Projects,Profile/{Avatar,Wallpaper,Refs}}
```

#### MacOS Software Update:

```sh
softwareupdate -ia --verbose
```


#### Installing xcode-select (CLI tools):

1. Run from the command line:
   ```sh
   xcode-select --install
   ```
2. Choose `install tools` from the prompt and `agree` to the terms
3. If you receive a message saying "Can't install the software because it is not currently available from the Software Update server"... it's probably because the command line tools are already installed...
4. Agree to the license by typing `sudo xcodebuild -license`
5. Press enter, then `q`
6. Then on the next prompt, type `agree`

#### Installing brew ([Homebrew](https://brew.sh/)):

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew doctor
brew update
```

#### Install Brew Packages

```sh
## Shell Programs
brew install \
  git \
  bat \
  exa \
  tldr \
  fzf &&

# GUI programs
brew install --cask \
  visual-studio-code \
  google-chrome \
  firefox \
  rectangle \
  iterm2 \
  docker \
  discord \
  slack \
  spotify \
  postgres \
  postico \
  bear \
  todoist \
```

```sh
## Shell Programs
# autoconf
# aws-elasticbeanstalk
# awscli
# brotli
# c-ares
# ca-certificates
# gdbm
# gettext
# git
# icu4c
# jemalloc
# krb5
# libev
# libnghttp2
# libuv
# m4
# mackup
# macos-term-size
# mas
# mongodb-community
# mongodb-database-tools
# mongosh
# mpdecimal
# ncurses
# nghttp2
# node
# node@14
# openssl@1.1
# pcre
# pcre2
# pipenv
# pkg-config
# postgresql
# pyenv
# python@3.10
# python@3.9
# rbenv
# readline
# ruby-build
# six
# sqlite
# tcl-tk
# xz
# yarn
# zlib
# zsh
# zsh-autosuggestions
# zsh-syntax-highlighting

## GUI programs
# alfred
# cheatsheet
# dash
# docker
# firefox
# google-chrome
# handbrake
# iterm2
# lepton
# macdown
# notion
# pgadmin4
# pock
# postman
# rectangle
# responsively
# robo-3t
# sketch
# slack
# sourcetree
# studio-3t
# visual-studio-code
# vlc
# zeplin
```

#### Zsh
1. Run from the command line
```sh
brew install zsh. # Type 0 if the prompt ask you about .zshrc.
```
2. Type `zsh`. You should have a different prompt.
3. Type exit to return to bash.
4. Type `which zsh` to determine where your new shell has installed.
5. Type `code /etc/shells` and add `/usr/local/bin/zsh`. (Lists trusted shells. The chsh command allows users to change their login shell only to shells listed in this file)
6. In a new tab, enter the following command:
```sh
chsh -s /usr/local/bin/zsh
```
close and reopen your terminal application. This will enable zsh by default.

7. Type the following command
```sh
echo $SHELL # This should return `/usr/local/bin/zsh`
```

## Oh-My-Zsh

1. Enter in terminal
```sh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```
2. Let's move Homebrew's directory further up the PATH, so that software loads from there by preference:
  * Open the `.zshrc` file:
  ```sh
  code ~/.zshrc
  ```
  * Find the line that starts with `export PATH=$PATH` (usually near the end of the file)
  * Get rid of any `$PATH` part which is located just after the `=` sign
  * Move the `/usr/local/bin` part to the front of the statement (just after the `=` sign)
  * Add `$PATH` at the end of the line (just after the last colon)
  * While you're in here, disable auto-updating by removing the `#` in front of the setting (around line 18)
  ```sh
  # Add Homebrew's executable directory to the front of the PATH
  export PATH=/usr/local/bin:$PATH
  ```

Add following to `.zshrc` to make Atom the default text editor:

``` sh
export EDITOR='atom -n'
export PAGER='less -f'
```

Close your terminal and open a new one - the prompt should be an arrow and tilde, and in colour.

### Install the Oh My Zsh plugins below

```sh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
```

To activate the plugins, add the following at the end of your .zshrc:

```sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

## Install `nvm`

Open a terminal window and type:
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash # This will install `nvm` in your system.

```
Type the following in terminal to include the new folders to the current `$PATH`
```sh
source ~/.bash_profile
```

Now that nvm is installed, we want to list the available versions, type:

``` sh
nvm ls-remote
```

And you will be shown a list of all the available versions of node.js

``` sh
nvm install <LAST_VERSION>
# or
nvm install node --reinstall-packages-from=node
nvm use node
```

If you type:

``` sh
node --version
```

You should see the last version number that you've installed.

You should also run the command:

``` sh
nvm alias default node # This will ensure that `node` command will persist after they close their terminal window.
```

### Install Packages Globally
```sh
@angular/cli
corepack
eslint
ngrok@
npm-check-updates
npm
nx
tslint
typescript
workbox-cli
```

Use the command `npm list -g --depth 0` to see all installed packages

## Install Git


1. This ensures we can upgrade Git more easily:
```sh
brew install git
```
2. Ensure you're not using "Apple Git" from the path `/usr/bin/git` by entering the following
```sh
which git
git --version
```
3. Set git confign settings:
``` sh
git config --global user.name "Your Name"
git config --global user.email "you@example.com" # be sure to use the email address you have registered with Github
touch ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global credential.helper osxkeychain
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```
4. Open the `.gitignore_global` file in code:
``` sh
code ~/.gitignore_global
```
And add the following lines:

```sh
.DS_Store
uploads/
node_modules/
bower_components/
.sass-cache/
vendor/
```

```sh
# This is a list of rules for ignoring files in every Git repositories on your computer.
# See https://help.github.com/articles/ignoring-files

# Compiled source #
###################
*.class
*.com
*.dll
*.exe
*.o
*.so

# Packages #
############
# it's better to unpack these files and commit the raw source
# git has its own built in compression methods
*.7z
*.dmg
*.gz
*.iso
*.jar
*.rar
*.tar
*.zip

# Logs and databases #
######################
*.log

# OS generated files #
######################
._*
.DS_Store
.DS_Store?
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Testing #
###########
.rspec
capybara-*.html
coverage
pickle-email-*.html
rerun.txt
spec/reports
spec/tmp
test/tmp
test/version_tmp

# node #
########
node_modules

# Rails #
#########
**.orig
*.rbc
*.sassc
.project
.rvmrc
.sass-cache
/.bundle
/db/*.sqlite3
/log/*
/public/system/*
/tmp/*
/vendor/bundle


# Ruby #
########
*.gem
*.rbc
.bundle
.config
.yardoc
_yardoc
doc/
InstalledFiles
lib/bundler/man
pkg
rdoc
tmp

# for a library or gem, you might want to ignore these files since the code is
# intended to run in multiple environments; otherwise, check them in:
# Gemfile.lock
# .ruby-version
# .ruby-gemset

# CTags #
#########
tags

# Env #
#######
.env

# Python #
#######
*.pyc
__pycache__/
```
