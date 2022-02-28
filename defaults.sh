#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------
e_pending "Creating defaults"
# ------------------------------------------------------------------------------

# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Set computer name (as done via System Preferences → Sharing)
# sudo scutil --set ComputerName "Kwakes' Macbook Pro"
# sudo scutil --set HostName "Kwakes' Macbook Pro"
# sudo scutil --set LocalHostName "kwakes-macbook-pro"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Kwakes' Macbook Pro"

get_consent "Do you want to set MacOS settings"

if has_consent; then
  get_consent "Create Dock spacers"
  if has_consent; then
    e_pending "Creating Dock spacers"
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
    killall Dock
  fi

  get_consent "Autohide Dock"
  if has_consent; then
    e_pending "Autohiding Dock"
    defaults write com.apple.dock autohide -boolean true
    killall Dock
  fi

  get_consent "Show Library folder"
  if has_consent; then
    # Show Library folder
    e_pending "Show Library folder"
    chflags nohidden ~/Library
  fi

  get_consent "Display hidden Finder files/folders"
  if has_consent; then
    e_pending "Displaying hidden Finder files/folders"
    defaults write com.apple.finder AppleShowAllFiles -boolean true
    killall Finder
  fi

  get_consent "Show status bar"
  if has_consent; then
    # Show status bar
    e_pending "Show status bar"
    defaults write com.apple.finder ShowStatusBar -bool true
  fi

  get_consent "Prevent left and right swipe through history in Chrome"
  if has_consent; then
    # Prevent left and right swipe through history in Chrome
    e_pending "Prevent left and right swipe through history in Chrome"
    defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
  fi
fi

if ! has_path "Workspace"; then
  get_consent "Create ~/Workspace folder"
  if has_consent; then
    e_pending "Creating ~/Workspace folder"
    mkdir -p ${HOME}/Workspace/{___Space___,Development,Projects,Profile/{Avatar,Wallpaper,Refs}}
    test_path "Workspace"
    test_path "Workspace/___Space___"
    test_path "Workspace/Development"
    test_path "Workspace/Projects"
    test_path "Workspace/Profile"
  fi
fi

if ! has_path 'Pictures/Screenshots'; then
  e_pending "Creating Pictures/Screenshots folder"
  mkdir -p ${HOME}/Pictures/Screenshots
  # Save screenshots to the Pictures/Screenshots
  defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

  # Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
  defaults write com.apple.screencapture type -string "png"
  test_path 'Pictures/Screenshots'
fi

get_consent "MacOS Software Update - this may requires a restart"
if has_consent; then
  e_pending "Updating MacOS"
  softwareupdate -ia --verbose
  e_success "MacOS Updated"
fi

if ! has_command "xcode-select"; then
  e_pending "Installing xcode-select (CLI tools)"
  xcode-select --install
  test_command "xcode-select"
fi

if ! has_command "brew"; then
  e_pending "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
  test_command "brew"
fi

echo "\r"

# ------------------------------------------------------------------------------
e_settled "Creating default Completed"
# ------------------------------------------------------------------------------

echo "\r"
