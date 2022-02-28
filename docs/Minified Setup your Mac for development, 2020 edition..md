https://dev.to/v3frankie/minified-setup-your-mac-for-development-2020-edition-32l

> A minified version of Setup your Mac for Development 2020

# Minified: Setup your Mac for development, 2020 edition.
[![Frankie Valentine](https://res.cloudinary.com/practicaldev/image/fetch/s--3ghyzaP4--/c_fill,f_auto,fl_progressive,h_50,q_auto,w_50/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/88781/19fcf895-1eb4-4881-92d1-e39f5640b2ea.jpeg)](https://dev.to/v3frankie)

> Updated 3/27/2020: Removed create-react-app global install as it is now recommended to use npx.  
> Updated 7/21/2020: Fixed typos.

A minified version of my first Dev.to [post](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a). If you need a more detailed walkthrough I suggest reading it first!

*   Initial setup:
    *   Filevault: On
    *   Disable Ask Siri
    *   Location Services: On (Limited)
    *   Check software updates
    *   Photos app > disable iCloud sync
    *   Messages app > configure iMessage accounts
    *   App Store > install previously installed applications
*   Terminal Finder Commands:
    *   Show Library Folder > `chflags nohidden ~/Library`
    *   Show hidden files > `defaults write com.apple.finder AppleShowAllFiles YES`
    *   Show path bar > `defaults write com.apple.finder ShowPathbar -bool true`
    *   Show status bar > `defaults write com.apple.finder ShowStatusBar -bool true`
*   System Preferences:
    *   Keyboard > Text > Disable “Correct spelling automatically”
    *   Security and Privacy > Firewall > On
    *   Security and Privacy > General > Allow App Store and identified developers
*   Alfred:
    *   Install [here](https://www.alfredapp.com/)
    *   Purchase [Powerpack](https://www.alfredapp.com/powerpack/) or activate license on install
    *   Install [Alfred Theme Minimal 2019 · GitHub](https://gist.github.com/felixqueisler/e0268924a409275c6daec735aa79616b#file-minimal-2019-alfredappearance)
*   Command Line Tools, Homebrew & Casks:
    *   Install Command Line Tools `xcode-select --install`
    *   Install Homebrew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”`
    *   Install Node and pin `brew install node && brew pin node`
    *   Install [Casks](https://formulae.brew.sh/formula/):

    brew cask install hyper
    brew cask install visual-studio-code
    brew cask install google-chrome
    

Enter fullscreen mode Exit fullscreen mode

*   Hyper, zsh & oh-my-zsh:
    *   Open Hyper
    *   Check if zsh is installed `zsh --version`
    *   If not, install `brew install zsh`
    *   Change shells `chsh -s /bin/zsh`
    *   Check shell change `echo $SHELL`
    *   Install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    *   Setup Homebrew alias: `nano ~/.zshrc`
        *   Add alias: `alias brewup=‘brew update; brew upgrade; brew cleanup; brew doctor’`
        *   Add zshconfig alias: `alias zshconfig=“code ~/.zshrc”`
        *   Save file: `CTRL + O`
        *   Exit: `CTRL + X`
*   Git and SSH
    *   Config Git:
        *   `git config --global user.name “First Last” (keep the quotes)`
        *   `git config --global user.email “Email” (keep the quotes)`
        *   `git config --get user.name`
        *   `git config --get user.email`
    *   Git alias setup:
        *   Add below code to `code ~/.gitconfig`
        *   Replace name and email

    [user]
    name = First Last
    email = student@example.com
    [alias]
    a = add
    ca = commit -a
    cam = commit -am
    s = status
    pom = push origin master
    pog = push origin gh-pages
    puom = pull origin master
    puog = pull origin gh-pages
    cob = checkout -b
    [color]
    ui = auto
    

Enter fullscreen mode Exit fullscreen mode

*   SSH:
    *   Check if one exists: `ls ~/.ssh/id_rsa`
    *   Generate key and replace email: `ssh-keygen -t rsa -b 4096 -C “student@example.com”`
    *   Add key: `ssh-add ~/.ssh/id_rsa`
    *   Go to github.com and add new key to profile in Settings
*   VS Code:
    *   Open Command Palette and add shell command: `shell command: Install ‘code’ command in PATH’`
    *   Install JavaScript support from Welcome screen
    *   Install Atom keyboard shortcuts from Welcome screen
    *   Install extensions:
        *   npm Intellisense
        *   Path Intellisense
        *   ESLint
        *   Prettier - Code formatter
        *   Live Share
        *   Bookmarks
        *   Auto Close Tag
        *   Bracket Pair Colorizer 2
        *   DotENV
        *   GraphQL
        *   indent-rainbow
        *   Live Server
        *   Debugger for Chrome (if using Chrome)
        *   Peacock
        *   Color highlight
        *   Markdown Preview Enhanced
        *   Babel JavaScript
        *   Git History
        *   Simple React Snippets
    *   Install themes:
        *   Atom One Dark
        *   Atom One Light
        *   Github theme
        *   Material theme pack
        *   Icon pack:
            *   Material icon
    *   Optional:
        *   Zeit theme: `curl https://zeit-theme.now.sh | tar xvz -C ~/.vscode/extensions`
        *   JetBrains Mono font family change:
            *   Install the font [here](https://www.jetbrains.com/lp/mono/)
            *   Open Font Book > Hit + > Locate the font folder in Downloads
            *   Hyper setup:
                *   `code ~/.hyper.js`
                *   Change fontFamily to JetBrains Mono
                *   Change fontSize to 16
            *   VS Code setup:
                *   Open Command Palette
                *   Search ‘user settings’ (JSON)
                *   Font Family JetBrains Mono
        *   Google Chrome dev tools theme:
            *   [Tania Rascia: New Moon Dev Tools Theme](https://github.com/taniarascia/new-moon-chrome-devtools)
*   n-install, npm, & Yarn
    *   Install n: `brew install n`
    *   Make cache folder and change permissions:
        *   `sudo mkdir -p /usr/local/n`
        *   `sudo chown -R $(whoami) /usr/local/n`
        *   `sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share`
    *   Install Yarn: `brew install Yarn`
*   mySQL, MongoDB, & note on other Databases
    *   Tap services: `brew tap homebrew/services`
    *   Install mySQL: `brew install mysql@5.7`
    *   Tap MongoDB: `brew tap mongodb/brew`
    *   Install MongoDB: `brew install mongodb-community@4.2`
*   CLI’s:
    *   `npm install -g now`
    *   `npm install -g netlify-cli`
    *   `npm install -g surge`
    *   `npm install -g gatsby-cli`
    *   `npm install -g vue-cli`
    *   `brew install hub` (Github official CLI in beta)
*   Additional Apps:
    *   Notion
    *   Slack
    *   Firefox Developer Edition
    *   Spectrum
    *   Numi
    *   Magnet
    *   Pocket
    *   Parcel
    *   Dashlane
    *   Spark
    *   Postman
    *   GraphQL Playground
    *   Dozer
