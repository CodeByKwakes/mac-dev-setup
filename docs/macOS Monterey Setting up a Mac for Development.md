https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/

> Last Updated: 1/28/2022 I have to set up a MacBook Pro fairly often - when starting a new job and when buying a new personal computer. I…

# macOS Monterey: Setting up a Mac for Development
_Last Updated: 1/28/2022_

I have to set up a MacBook Pro fairly often - when starting a new job and when buying a new personal computer. I created this article back in 2015 when I got my first Mac and have been updating it ever since with whatever I need as my job evolves. I'm primarily a full-stack web developer, so most of my needs will revolve around JavaScript/Node.js.

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#getting-started)Getting Started
----------------------------------------------------------------------------------------------------------

The setup assistant will launch once you turn the computer on. Enter your language, time zone, Apple ID, and so on. The first thing you should do is update macOS to get the latest security updates and patches.

*   [Install apps via Homebrew](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#homebrew)
*   [Shell setup with zsh](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#shell)
*   [Set up Node via nvm](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#nodejs)
*   [Set up git config](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#git)
*   [Set up SSH keys and config](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#ssh)
*   [macOS settings](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#macos-settings)
*   [Application settings](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#application-settings)

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#homebrew)Homebrew
--------------------------------------------------------------------------------------------

Install the [Homebrew](https://brew.sh/) package manager. This will allow you to install almost any app from the command line.

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

Make sure everything is up to date.

> Note: On the M1 install, there will be a few errors at the end, you'll have to run the commands to add to path, then run `brew doctor` and run the commands listed.

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#install-apps)Install Apps
----------------------------------------------------------------------------------------------------

Here are a few shell programs I always use:

| Shell Program | Purpose |
| --- | --- |
| [git](https://git-scm.com/docs/git-shell) | Version control |
| [exa](https://the.exa.website/) | `ls` alternative |
| [bat](https://github.com/sharkdp/bat) | `cat` alternative |
| [fzf](https://github.com/junegunn/fzf) | Search |
| [tldr](https://tldr.sh/) | `man` alternative |

Here are some the applications I always install (`cask` flag in Homebrew):

> **Do not** install Node.js through Homebrew. Use nvm (below).

| Application | Purpose |
| --- | --- |
| [Visual Studio Code](https://code.visualstudio.com/) | text editor |
| [Google Chrome](https://www.google.com/chrome/) | web browser |
| [Firefox](https://www.mozilla.org/en-US/firefox/products/) | web browser |
| [Rectangle](https://rectangleapp.com/) | window resizing |
| [iTerm2](https://iterm2.com/) | terminal |
| [Docker](https://www.docker.com/) | development |
| [Discord](https://www.discord.com/) | communication |
| [Slack](https://slack.com/) | communication |
| [Spotify](https://spotify.com/) | music |
| [Postgres](https://www.postgresql.org/) | database |
| [Postico](https://eggerapps.at/postico/) | database UI |
| [Postman](https://www.postman.com/) | API tool |
| [Bear](https://www.bear.app/) | Notes |
| [Todoist](https://www.todoist.com/) | Todos |

App installation

```bash
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

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#shell)Shell
--------------------------------------------------------------------------------------

Catalina comes with [zsh](http://zsh.sourceforge.net/) as the default shell. Install [Oh My Zsh](https://ohmyz.sh/) for sensible defaults.

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

I add a few alises.

    alias cat="bat"
    alias ls="exa"

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#nodejs)Node.js
-----------------------------------------------------------------------------------------

Use [Node Version Manager (nvm)](https://github.com/nvm-sh/nvm/blob/master/README.md) to install Node.js. This allows you to easily switch between Node versions, which is essential.

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#install)Install

Install the latest version.

Restart terminal and run the final command.

Confirm that you are using the latest version of Node and npm.

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#update)Update

For later, here's how to update nvm.

    nvm install node --reinstall-packages-from=node

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#change-version)Change version

Here's how to switch to another version and use it.

And to set the default:

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#git)Git
----------------------------------------------------------------------------------

The first thing you should do with Git is [set your global configuration](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup).

Input your config and create some aliases.

.gitconfig
```bash
[user]
  name   = Firstname Lastname
  email  = you@example.com
[github]
  user   = username
[alias]
  a      = add
  ca     = commit -a
  cam    = commit -am
  cm     = commit -m
  s      = status
  p      = push
  pom    = push origin master
  puom   = pull origin master
  cob    = checkout -b
  co     = checkout
  fp     = fetch --prune --all
  l      = log --oneline --decorate --graph
  lall   = log --oneline --decorate --graph --all
  ls     = log --oneline --decorate --graph --stat
  lt     = log --graph --decorate --pretty=format:'%C(yellow)%h%Creset%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset'
```
With the above aliases, I can run `git s` instead of `git status`, for example. The less I have to type, the happier I am.

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#ssh)SSH
----------------------------------------------------------------------------------

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#generate-ssh-key)Generate SSH key

You can [generate an SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) to distribute.

    ssh-keygen -t ed25519 -C "your_email@example.com"

Start ssh-agent.

Add key.

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#config)Config

Simplify the process of SSHing into other boxes with your SSH config file. Create `~/.ssh/config` if it does not already exist.

Add the following contents, changing the variables for any hosts that you connect to. Using the below will be the same as running `ssh -i ~/.ssh/key.pem user@example.com`.

~/.ssh/config

    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_ed25519

    Host myssh
      HostName example.com
      User user
      IdentityFile ~/.ssh/key.pem

Now just run the alias to connect.

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#macos-settings)macOS Settings
--------------------------------------------------------------------------------------------------------

I don't like a lot of the Apple defaults so here are the things I always change.

To get the Home folder in the finder, press `CMD + SHIFT + H` and drag the home folder to the sidebar.

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#general)General

*   Set Dark mode
*   Make Google Chrome default browser

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#dock)Dock

*   Automatically hide and show Dock
*   Show indicators for open applications

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#keyboard)Keyboard

*   Key Repeat -> Fast
*   Delay Until Repeat -> Short
*   Disable "Correct spelling automatically"
*   Disable "Capitalize words automatically"
*   Disable "Add period with double-space"
*   Disable "Use smart quotes and dashes"

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#security-and-privacy)Security and Privacy

*   Allow apps downloaded from App Store and identified developers
*   Turn FileVault On (makes sure SSD is securely encrypted)

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#sharing)Sharing

*   Change computer name
*   Make sure all file sharing is disabled

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#users--groups)Users & Groups

*   Add "Rectangle" to Login items

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#defaults)Defaults
--------------------------------------------------------------------------------------------

A few more commands to change some defaults.

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

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#application-settings)Application Settings
--------------------------------------------------------------------------------------------------------------------

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#chrome)Chrome

*   Install [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)
*   Install [React DevTools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
*   Install [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd?hl=en)
*   Install [JSONView](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en)
*   Install [Duplicate Tab Shortcut](https://chrome.google.com/webstore/detail/duplicate-tab-shortcut/klehggjefofgiajjfpoebdidnpjmljhb?hl=en)
*   Settings -> Set theme to "Dark"

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#visual-studio-code)Visual Studio Code

*   Press `CMD + SHIFT + P` and click "Install code command in PATH".
*   View [Dotfiles](https://github.com/taniarascia/dotfiles) for keyboard shortcuts and settings
*   Install [New Moon Theme](https://marketplace.visualstudio.com/items?itemName=taniarascia.new-moon-vscode)
*   Install [GitLens](https://gitlens.amod.io/)
*   Install [Highlight Matching Tag](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)
*   Install [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
*   Install [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
*   Install [Jest](https://marketplace.visualstudio.com/items?itemName=Orta.vscode-jest)
*   Install [Jest Runner](https://marketplace.visualstudio.com/items?itemName=firsttris.vscode-jest-runner)

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#rectangle)Rectangle

*   Full Screen: `CMD + SHIFT + '` (prevents messing with other commands)
*   Left Half: `CMD + OPTION + LEFT`
*   Right Half: `CMD + OPTION + RIGHT`

### [](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#iterm2)iTerm2

*   [Use ⌥← and ⌥→ to jump forwards / backwards](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)
    *   Change`⌥←` via "Send Escape Sequence" with `b`
    *   Change`⌥→` via "Send Escape Sequence" with `f`

[](https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/#conclusion)Conclusion
------------------------------------------------------------------------------------------------

That sums it up for my current preferences on setting up a MacBook Pro. I hope it helped speed up your process or gave you ideas for the next time you're setting one up.
