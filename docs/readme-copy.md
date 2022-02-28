- [ ] macOS Settings
  - [ ] System preferences
  - [ ] Finder
  - [ ] Screenshot
- [ ] macOS Shortcuts
- [ ] Command-line Tools
  - [x] Xcode
  - [x] Homebrew
  - [ ] iTerm2
  - [ ] Git
  - [x] Zsh
  - [ ] Oh My Zsh
  - [ ] Node.js
  - [ ] Docker
  - [ ] tldr
  - [ ] htop
  - [ ] fzf
  - [ ] ripgrep
  - [ ] path-extractor
  - [ ] lnav
- [ ] MacOS Applications
  - [ ] Visual Studio Code
  - [ ] Rectangle
  - [ ] GIMP
  - [ ] LICEcap
  - [ ] Alfred
  - [ ] Numi
- [ ] Tips and Tricks

# macOS Settings

To get the Home folder in the finder, press `CMD + SHIFT + H` and drag the home folder to the sidebar.

# General
Set Dark mode
Make Google Chrome default browser

# Dock
Automatically hide and show Dock
Show indicators for open applications

# Keyboard
Key Repeat -> Fast
Delay Until Repeat -> Short
Disable "Correct spelling automatically"
Disable "Capitalize words automatically"
Disable "Add period with double-space"
Disable "Use smart quotes and dashes"

# Security and Privacy
Allow apps downloaded from App Store and identified developers
Turn FileVault On (makes sure SSD is securely encrypted)

# Sharing
Change computer name
Make sure all file sharing is disabled

# Users & Groups
Add "Rectangle" to Login items

# Defaults
A few more commands to change some defaults.

```bash
# Show Library folder
chflags nohidden ~/Library

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Prevent left and right swipe through history in Chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
```

# Command-line Tools

## Xcode

#### Install

1. Run from the command line:
```bash
xcode-select --install
```
2. Choose `install tools` from the prompt and `agree` to the terms
3. If you receive a message saying "Can't install the software because it is not currently available from the Software Update server"... it's probably because the command line tools are already installed...
4. Agree to the license by typing `sudo xcodebuild -license`
5. Press enter, then `q`
6. Then on the next prompt, type `agree`

<br>

## Homebew Package Manager

Homebrew is a package manager for OS X. [Link](http://brew.sh/)

#### Install

1. The package manager allows us to install and update software (like Ruby, Git, MongoDB, etc) from the command line:
2. Paste the command into the terminal

 ```bash
 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 ```
3. Ensure that Homebrew is raring to brew and fix any issues:

```bash
brew doctor
```
4. Update Homebrew:
```bash
brew update
```

(**Note**: the absolute paths will not be used after the next step, but might not be needed if they already have `/usr/local/bin` in their `$PATH`)

<br>

## Zsh

#### Install

1. Type `brew install zsh`. Type `0` if the prompt ask you about `.zshrc`.
2. Type `zsh`. You should have a different prompt.
3. Type `exit` to return to bash.
4. Type `which zsh` to determine where your new shell has installed.
5. Type `code /etc/shells` and add `/usr/local/bin/zsh`. (Lists trusted shells. The `chsh` command allows users to change their login shell only to shells listed in this file)
6. In a new tab, type `chsh -s /usr/local/bin/zsh`, then close and reopen your terminal application. This will enable `zsh` by default.
7. Type `echo $SHELL`. This should return `/usr/local/bin/zsh`.


#### Command Line Install

```bash
brew install zsh
# Type `0` if the prompt ask you about `.zshrc`
# Type `zsh`. You should have a different prompt.
# Type `exit` to return to bash.
which zsh
echo '/usr/local/bin/zsh' >> /etc/shells
chsh -s /usr/local/bin/zsh
```
<br>

## Oh-My-Zsh
Here is the link to the [Github](https://github.com/robbyrussell/oh-my-zsh).

The `PATH` environment variable is a colon-delimited list of directories that your shell searches through when you enter a command.

1. Type `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`
2. Let's move Homebrew's directory further up the PATH, so that software loads from there by preference:
  * Open the `.zshrc` file: `code ~/.zshrc`
  * Find the line that starts with `export PATH=$PATH` (usually near the end of the file)
  * Get rid of any `$PATH` part which is located just after the `=` sign
  * Move the `/usr/local/bin` part to the front of the statement (just after the `=` sign)
  * Add `$PATH` at the end of the line (just after the last colon)
  * While you're in here, disable auto-updating by removing the `#` in front of the setting (around line 18)

Add following to `.zshrc` to make Atom the default text editor:

``` sh
export EDITOR='atom -n'
export PAGER='less -f'
```

Close your terminal and open a new one - the prompt should be an arrow and tilde, and in colour.

#### Command Line Install

```bash
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
# echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
echo export PATH="/usr/local/bin:$PATH" >> ~/.zshrc
```

<br>

## Install `nvm`

Open a terminal window and type:
`curl https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash`

This will install `nvm` in your system.

Type `source ~/.bash_profile` to include the new folders to the current `$PATH`

Now that nvm is installed, we want to list the available versions, type:

``` sh
$ nvm ls-remote
```

And you will be shown a list of all the available versions of node.js

``` sh
$ nvm install <LAST_VERSION>
```

If you type:

``` sh
$ node --version
```

You should see the last version number that you've installed.

You should also run the command:

``` sh
$ nvm alias default node
```

This will ensure that `node` command will persist after they close their terminal window.


```bash
curl https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
source ~/.bash_profile
nvm install node
# nvm install node --reinstall-packages-from=node - update
nvm use node
nvm alias default node
node -v && npm -v
```
<br>


# References
[MacBook Pro Web Developer Setup — From clean slate to dev machine](https://medium.com/@tretuna/macbook-pro-web-developer-setup-from-clean-slate-to-dev-machine-1befd4121ba8)

[macOS Monterey: Setting up a Mac for Development](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development)
