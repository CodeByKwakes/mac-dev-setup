https://medium.com/@npranto/macos-web-development-setup-guide-db229bcbb849

> This brief guide will go over a step-by-step process of setting up a web development environment for Software Engineers, specifically web developers. If you are new to web development or even an…

# macOS Web Development Setup Guide - Nazmuz Shakib Pranto - Medium
![](https://miro.medium.com/max/1400/0*FXj8DG9aCi7JLzMt.jpg)

## What does this guide cover?

This brief guide will go over a step-by-step process of setting up a web development environment for Software Engineers, specifically web developers. If you are new to web development or even an experienced pro, I think I got you covered. While this is not an exhaustive list for every cool hack or setting you may want for your development setup, I hope it helps to get someone started, without wasting a ton of time.

Quick note, this is NOT an industry standard for how every developer should set up a development environment. There is no such thing as that. This is a personalized guide that I find handy whenever I set up a new macOS device or factory reset an existing one.

## Why should you consider using it?

Well… I’m sure developers always run into this whenever they start a new job or buy a new macOS device. They had their old development setup on their previous device that worked well, but now, they have to set up the entire process all over again. THIS is where this guide comes in. I know different developers will have different opinions and preferences for how they want to set up their development environment and that’s completely fair, but I hope they can at least take some helpful tips that I have added here.

Ok, enough talk, let’s get started!

## Guided Steps

> _Prerequisites:_

*   macOS Big Sur or above

## Step 1

> _Factory Reset_

I am going to assume that you are perhaps in one of these 2 scenarios as you start this guide:

*   You have a new macOS device (i.e., Macbook, Macbook Air, Macbook Pro, and so on)
*   You have an existing macOS device, but you want a fresh start with a factory reset.

If you have a new macOS device, you won’t need to factory reset it. Feel free to skip to Step 2 in that case.

While factory reset is completely optional for existing macOS devices, I prefer to start with that b/c I like a fresh new laptop to work with.

Anyways, there are plenty of videos on YouTube on how to factory reset a macOS device, here is one that I prefer:

How To Erase and Reset a Mac back to factory default

## Step 2

> _Accounts_

**Sign in to iCloud:**
`System Preferences` > `Sign In (top right)`

![](https://miro.medium.com/max/1400/0*h74AoNfYGNhQY6mc.png)

**iCloud Preferences:**

![](https://miro.medium.com/max/952/0*q8HgVIBeeqOlEw9V.png)

![](https://miro.medium.com/max/952/0*tuFzpK3SthJGTo-X.png)

_Note: The above preferences are solely based on my own choices, which obviously might differ quite a bit from others. So, feel free to enable/disable apps using iCloud as you see fit._

## Step 3

> _macOS Settings_

### General

*   Set Dark mode
*   Make Google Chrome default browser

### Dock

*   Automatically hide and show Dock
*   Show indicators for open applications

### Keyboard

*   Key Repeat -> Fast
*   Delay Until Repeat -> Short
*   Disable "Correct spelling automatically"
*   Disable "Capitalize words automatically"
*   Disable "Add period with double-space"
*   Disable "Use smart quotes and dashes"

### Security and Privacy

*   Allow apps downloaded from App Store and identified developers
*   Turn FileVault On (makes sure SSD is securely encrypted)

### Sharing

*   Change computer name
*   Make sure all file sharing is disabled

### Users & Groups

*   Add "Rectangle" to Login items

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#defaults)Defaults
--------------------------------------------------------------------------------------------

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


Go to System Preferences for the following:

*   Keyboard > Text > Disable “Correct spelling automatically”
*   Security and Privacy > Firewall > On
*   Security and Privacy > General > Allow App Store and identified developers
*   File Sharing > Off
## Show hidden files in Finder

*   Open "Finder"
*   Press the `Command + Shift + .` keys at the same time
*   Now, all hidden files should be shown

![](https://miro.medium.com/max/1400/0*HXJT42uJDnhrrb4p.png)

## Show path bar in Finder

*   Open “Finder”
*   `View` > `Show Path Bar`
*   Now, full path to a file should be shown

![](https://miro.medium.com/max/1400/0*W4kXtQ9dE7Nh2fbA.png)

## Show File / Directory Status in Finder

*   Open “Finder”
*   `View` > `Show Status Bar`

![](https://miro.medium.com/max/1400/0*sleUWVs68f7kMckb.png)

## Show all file and directory sizes

*   `Finder` > `View` > `Show View Options` > `(Check) “Calculate all sizes”`

## Show file name extensions

*   `Finder` > `Preferences` > `Advanced` > `(Check) “Show all filename extensions”`

## Show reference to user in Finder sidebar

*   `Finder` > `Preferences` > `(Check) <user> on the sidebar, i.e., “jsmith”`

## Turn on Firewall

*   `System Preferences` > `Security and Privacy` > `Firewall` > `Turn On Firewall`

## Only Allow App Store and Identified Developer Apps

*   `System Preferences` > `Security and Privacy` > `General` > `Allow apps downloaded from` > `(Choose) "App Store and identified developers"`

## Disable File Sharing

*   `System Preferences` > `Sharing` > `(Uncheck) “File Sharing”`

## Enable tap to click

*   `System Preferences` > `Trackpad` > `(Check) Tap to click`

## Disable auto correct spelling

*   `System Preferences` > `Keyboard` > `Text` > `(Uncheck) Disable “Correct spelling automatically”`

## Enable fast keystrokes and key repeats

*   `System Preferences` > `Keyboard`
*   Set “Key Repeat” to “Fast”
*   Set Delay Until Repeat” to “Short”

## Auto hide docks

*   `System Preferences` > `Dock & Menu Bar` > `(Check) “Automatically hide and show the Dock”`

## Show battery percentage

*   `System Preferences` > `Dock & Menu Bar` > `Battery (left sidebar)` > `(Check) “Show Percentage”`

## Step 4

> _Finder Directory Structure & Hierarchy_

```
- AirDrop
- Recents
- Applications
- Desktop
- Documents
- Downloads
- <user-directory>, i.e., “jsmith”
  - screenshots     // all screenshots live here
  - workspace
    - ___space___   // all development related configuration, contents and settings live here
    - Development      // all development projects live here
    - Projects      // all development projects live here
    - Profile
      - avatar     // profile and social pictures
      - wallpaper  // (optional) wallpapers directory
      - refs       // photo id, resume, or essential quick references live here
```
<!-- mkdir -p htg/{articles,images,note,done} -->
<!-- mkdir -p Workspace/{___Space___,Development,Projects,Profile/{Avatar,Wallpaper,Refs}} -->
```bash
mkdir -p {Screenshots,Workspace/{___Space___,Development,Projects,Profile/{Avatar,Wallpaper,Refs}}}

```
## Step 5

> _Screenshots_

By default, all screenshots are automatically saved on the “Desktop.” This can really clutter your home screen over time, so for a cleaner and more maintainable structure for screenshots, let’s set up a “screenshots” directory

*   Create a `Screenshots` directory on the root level (under user’s directory, i.e., `jsmith` > `Screenshots`)
*   Open screenshot app (Command + SHIFT + 5)
*   Update “Options” by setting “Save to” to the `Screenshots` directory

Ok, now the real stuff… development environment

## Step 6

> _Set Up Development Environment_

Open Command Line / `Terminal`

## Install Xcode command line tools

<!-- *   Run `xcode-select --install` -->
  ```bash
  xcode-select --install
  ```


## Install Homebrew

<!-- *   Run the following command in the terminal
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
*   Run to ensure brew is up to date and healthy
```bash
brew update; brew upgrade; brew cleanup; brew doctor
``` -->

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update; brew upgrade; brew cleanup; brew doctor
```

Now, with Homebrew installed, let’s download a list of essential tools and applications right from the command line:

```bash
brew install node
brew install tree
brew install blueutil
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask firefox
brew install --cask docker
```
Setup Shell
-----------

*   Run `echo $SHELL` // expect “zsh” shell by default

_Note: if you have a different shell, use the steps below to install zsh shell:_

*   Run `brew install zsh`
*   Then, run `chsh -s /bin/zsh`

Install Oh-My-Zsh
-----------------

Oh-My-Zsh is a popular framework for ZSH configuration, mainly to jazz up your command line

<!-- Run \`sh -c “$(curl -fsSL [https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)](https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh))" -->

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

> _Add Alias:_

Aliases let us add easy to remember short commands that run much longer and multi-step processes in the command line

After installing Oh-My-Zsh, you should have a `.zshrc` the configuration file on the root level

![](https://miro.medium.com/max/1400/0*gWnNBH7MDPx4IQZX.png)

Open `.zshrc` file inside VS Code (Note: VSCode is code editor we installed via homebrew earlier)

Run `code ~/.zshrc`

Under “# Example aliases”, add these aliases:

```bash
# To keep brew up to date and clean —
alias brewup=”brew update; brew upgrade; brew cleanup; brew doctor”
# Shortcut to copy SSH —
alias copyssh=”pbcopy < ~/.ssh/id_rsa.pub”
# Shortcut to open .zshrc file —
alias openzshrc=”code ~/.zshrc”
# Shortcut to go to projects directory —
alias gotoprojects=”cd ~/workspace/projects”
# Shortcut to turn Bluetooth on/off:
alias bton=”blueutil --power 1” #ON
alias btoff=”blueutil --power 0” #OFF
```



> _Add ZSH plugins:_

Plugins help to add more enhancements to Oh-My-Zsh. I always go with these 2 must-haves:

[**zsh-autosuggestions**](https://github.com/zsh-users/zsh-autosuggestions)

*   Run `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions` inside the command line
*   Now, add the plugin name to the plugins list inside `.zshrc` file:

`plugins=(zsh-autosuggestions)`

[**zsh-syntax-highlighting**](https://github.com/zsh-users/zsh-syntax-highlighting)

*   Run `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
*   Add to plugins list in `.zshrc` file:

`plugins=(zsh-syntax-highlighting)`

_Note: If you are interested in installing more plugins, check out_ [_awesome-zsh-plugins_](https://project-awesome.org/unixorn/awesome-zsh-plugins)

Git
---

*   Run `brew install git`, if `git` is NOT installed already
*   Run `brew upgrade git`, to install the latest version of git on system
*   Run `git config --global user.name "<FIRSTNAME> <LASTNAME>"` (keep the quotes)
*   Run `git config --global user.email "<EMAIL>"` (keep the quotes)
*   Run `git config --global color.ui auto`

Setup SSH Key
-------------

SSH key enables a password-less way to talk to another computer or a server from your local machine. Check out [Quick Bite: SSH Key](https://dev.to/npranto/quick-bite-ssh-key-4llh) if you want to learn a little bit about SSH keys.

Anyways, let’s set up SSH key…

*   To check for existing SSH key, run `ls ~/.ssh/id_rsa` (if you see “No such file or directory”, then continue on to generate a new SSH key)
*   To generate a new SSH key, run `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`
*   To copy SSH key, run `pbcopy < ~/.ssh/id_rsa.pub`

Visual Studio Code
------------------

*   Open VSCode (`Finder` > `Applications` > `Visual Studio Code.app`)
*   Open command palette inside VSCode — `CMD + p`
*   Once search bar pops up, type `>shell command`, choose `Install 'code' command in PATH`
*   Install VSCode extensions:

Create a new file (`extensions.txt`) file inside `workspace/___space___/` directory

Paste in the following list of extensions inside extensions.txt file:

```
bradlc.vscode-tailwindcsschristian-kohler.path-intellisenseCoenraadS.bracket-pair-colorizerdbaeumer.vscode-eslintdracula-theme.theme-draculadsznajder.es7-react-js-snippetseamodio.gitlensEditorConfig.EditorConfigesbenp.prettier-vscodeformulahendry.auto-close-tagformulahendry.code-runnerjohnpapa.vscode-cloakMikestead.dotenvnathanchapman.JavaScriptSnippetsPKief.material-icon-themepnp.polacoderitwickdey.LiveServersdras.night-owlstevencl.addDocCommentsstreetsidesoftware.code-spell-checkerthedavej.night-owl-blacktombonnike.vscode-status-bar-format-toggleWallabyJs.quokka-vscodewayou.vscode-todo-highlightxabikos.JavaScriptSnippetsYzhang.markdown-all-in-one
```

Now, open command line, go into the \`extensions.txt\` file level, and run \`cat extensions.txt | xargs -L1 code — install-extension\` (installs all these cool extensions automatically, all at once):

\- npm Intellisense

\- Path Intellisense

\- ESLint

\- Prettier — Code formatter

\- Live Share

\- Auto Close Tag

\- Bracket Pair Colorizer 2

\- DotENV

\- Live Server

\- Add jsdoc comments

\- Code Spell Checker

\- DotENV

\- Dracula Official

\- EditorConfig for VS Code

\- GitLens — Git supercharged

\- Markdown All in One

\- Material Icon Theme

\- Night Owl

\- Night Owl Black

\- ES7 React/Redux/GraphQL/React-Native snippets

\- Palacode

\- Quokka.js

\- Tailwind CSS IntelliSense

\- TODO Highlight

*   [Install FiraCode Font](https://github.com/tonsky/FiraCode)

[Download](https://github.com/tonsky/FiraCode#download--install) FiraCode inside `workspace/___space___` directory

Now, unzip it

Go into the `ttf` directory

Select all font files

Right click and select Open

Select “Install Font”

*   VSCode Settings

Open command palette — CMD + p

Inside the search bar, type in `> open setting` and choose `Preferences: Open Settings (JSON)` from given options

Now, paste in the following rules (in JSON) in it:

```
{  "editor.fontSize": 18,  "editor.fontLigatures": true,  "editor.fontFamily": "Fira Code",  "editor.wordWrap": "on",  "workbench.colorTheme": "Dracula Soft",  "editor.formatOnPaste": false,  "editor.formatOnType": false,  "editor.formatOnSave": true,  "editor.defaultFormatter": "esbenp.prettier-vscode",  "workbench.iconTheme": "material-icon-theme",  "terminal.integrated.fontFamily": "MesloLGS NF",  "terminal.integrated.fontSize": 14,  "editor.tabSize": 2,  "prettier.requireConfig": true}
```

*   _(Optional)_ install “Settings Sync” extension to keep all of your VSCode extensions and settings in Sync on GitHub. Here is a great video showcasing that — [https://www.youtube.com/watch?v=f-uzUsHTQ8s&ab\_channel=JamesQQuick](https://www.youtube.com/watch?v=f-uzUsHTQ8s&ab_channel=JamesQQuick)

Node Version Manager (NVM)
--------------------------

NVM lets you install multiple versions of Node.js inside your local machine. This can be essential at times when you have to go back and forth between different projects using different Node versions.

Install NVM:

*   Run `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash`
*   Verify installation — `command -v nvm` (output should be `nvm`)
*   Usage:

Run `nvm install node`, to install the latest version of Node

Run `nvm install <version>`, to install a specific version, i.e., `nvm install 14.7.0`

See list of Node versions installed — `nvm ls`

To use the default node version — `nvm use node`

To set alias default version — `nvm alias default <version>`

To uninstall a node version — `nvm uninstall <version>`

iTerm
-----

A great alternative to Terminal.app for command line

> _Preferences:_

*   `Profiles` > `General` > `Working Directory` > `(Choose) “Reuse Previous Session’s Directory”`
*   `Profiles` > `Font` > `Size (16)`

> _Themes:_

3 Options:

*   Oh-My-Zsh Theme (easiest to set up)
*   Dracula Theme (what I use)
*   Powerlevel10k Theme (coolest option)

**Oh-My-Zsh Theme:**

*   Pick a theme from [this](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) list
*   Update “ZSH\_THEME” inside `.zshrc` file with your favorite theme
*   Example: `ZSH_THEME="awesomepanda"`

**Dracula Theme:**

*   Open iTerm and go into `workspace/___space___` directory
*   Run `git clone [https://github.com/dracula/iterm.git](https://github.com/dracula/iterm.git)`
*   Activating theme:

`iTerm2` > `Preferences` > `Profiles` > `Colors` Tab

Open the `Color Presets` drop-down in the bottom right corner

Select `Import` from the list

Select the `Dracula.itermcolors` file (from “workspace/**_space_**/iterm” directory)

Select “Dracula” from Color Presets

**Powerlevel10k Theme:**

*   Open iTerm and go into `workspace/___space___` directory
*   Run `git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git)`
*   Run `echo 'source ~/workspace/___space___/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc`
*   Now, restart iTerm
*   You should be prompted by Powerlevel10k to customize your iTerm
*   Follow through each step with provided instructions to setup your own customized iTerm UI preferences

_Before I leave, a few things…_

*   📑 bookmark this page in case you want to refer back to it later on
*   👍 share this article with your peers or anyone who might want to set up a macOS for web development
*   💌 if I got anything wrong in this article, please leave a kind feedback
