https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a

> A revision to a Medium post from 2018. How to get your Mac setup for development.

# Setup your Mac for development, 2020 edition.
Please see end of article for revisions and updates.

My first post on Dev.to will be an extension of my first Medium post from January of 2018. This post has been removed because I no longer continue to support Medium and will be posting on Dev.to from here on out.

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#introduction-and-goals)Introduction and goals
--------------------------------------------------------------------------------------------------------------------------

It’s been a while and I’m ready to come back and tackle another post for getting setup with your Mac in 2020. I still have a relatively similar setup and things haven’t changed much aside from getting more in touch and a lot more comfortable using new tools.

This will give you a more advanced setup and these tools will require proper research to become more in touch with each of them. The introduction to this post is purely getting started, but I wanted to include it, just as I had it in my first one. Feel free to skip down to further sections if you are already set up with the intro stuff.

The initial setup of your Mac includes Filevault as a setup step. I recommend using it. Also, location services are handy because you can use Find My to locate your device. I recommend this enabled too.

I would be quick to mention that if you haven’t already opened up your System Preferences and make sure you don’t have any new software updates.

[![Alt Text](https://res.cloudinary.com/practicaldev/image/fetch/s--QKQmxcAt--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/2q3hzv5bf2tubsn108f0.png)](https://res.cloudinary.com/practicaldev/image/fetch/s--QKQmxcAt--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/2q3hzv5bf2tubsn108f0.png)

Keeping your system up to date is crucial. Keep an eye out for updates on the regular.

If you are short on space I would also suggest loading up the Photo's app and disabling iCloud sync in the preferences. Messages also needs to be configured if you are an iMessage user so go ahead and load that up as well. I would recommend keeping this app pretty clean as messages can take up a lot of storage.

Finally, head to the App Store after you have completed this step and install each of the applications you use with your devices that are also Mac Apps. Upon completing this we can get into the nuts and bolts.

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#terminal-and-system-preferences)Terminal and System Preferences
--------------------------------------------------------------------------------------------------------------------------------------------

Open your Terminal via the search bar in the top right corner. This is also called _Spotlight_ which is a quick way to pull up applications on your system. When the Terminal is up make sure you use the command `pwd` to show where you are located in the system (i.e. /Users/you).

If at any point the following commands give you a permission error. This means you are not granted Administer privileges to utilize the Command Line. You will have to use the `sudo` command before and type in your password in Terminal.

[![Alt Text](https://res.cloudinary.com/practicaldev/image/fetch/s--usdrNgiO--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/ebc8new2381q1uhdnzyx.jpg)](https://res.cloudinary.com/practicaldev/image/fetch/s--usdrNgiO--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/ebc8new2381q1uhdnzyx.jpg)

The following commands will greatly increase the accessibility of your Mac during development.

Show Library folder:  

    chflags nohidden ~/Library
    

Enter fullscreen mode Exit fullscreen mode

Show hidden files:  

    defaults write com.apple.finder AppleShowAllFiles YES
    

Enter fullscreen mode Exit fullscreen mode

Show path bar:  

    defaults write com.apple.finder ShowPathbar -bool true
    

Enter fullscreen mode Exit fullscreen mode

Show status bar:  

    defaults write com.apple.finder ShowStatusBar -bool true
    

Enter fullscreen mode Exit fullscreen mode

Go to System Preferences for the following:

*   Keyboard > Text > Disable “Correct spelling automatically”
*   Security and Privacy > Firewall > On
*   Security and Privacy > General > Allow App Store and identified developers
*   File Sharing > Off

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#alfred)Alfred
------------------------------------------------------------------------------------------

Alfred is a replacement to Spotlight. I cannot give enough light to how much my inspiration has increased to speed up my workflow using my Mac with Alfred. Alfred can be a productive companion to your web development workflow and I recommend purchasing the Powerpack (25 euros aka $28 US). Powerpack adds great features such as clipboard history, a snippet manager, and workflows which are excellent. I highly recommend using the snippet and clipboard tools for your code.

Install Alfred: [here](https://www.alfredapp.com/)  
I changed the shortcut to access Alfred to the shortcut that Spotlight uses `CMD + Spacebar`. You can do this in the Spotlight settings in System Preferences. Locate the Keyboard Shortcuts tab in the bottom left to disable the shortcut or change it.

More info is located at the [Alfred](https://www.alfredapp.com/) site and [Powerpack](https://www.alfredapp.com/powerpack/) page.

Also, I use this awesome minimal theme from Felix Queisler:  
[Alfred Theme Minimal 2019 · GitHub](https://gist.github.com/felixqueisler/e0268924a409275c6daec735aa79616b#file-minimal-2019-alfredappearance)

Download the zip and click the theme file to activate it.

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#command-line-tools-homebrew-amp-casks)Command Line Tools, Homebrew & Casks
-------------------------------------------------------------------------------------------------------------------------------------------------------

Every developer utilizes _Command Line Tools_. A simple terminal command will allow you to download these. It will ask you to confirm after you have entered the command.  

Enter fullscreen mode Exit fullscreen mode

### [](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#homebrew-amp-casks)Homebrew & Casks

[Homebrew](https://brew.sh/), it’s the missing package manager for MacOS, and quite powerful at that.

Copy and paste the following code into your terminal to install Homebrew.  

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    

Enter fullscreen mode Exit fullscreen mode

It will ask you to enter 'Return' to confirm the install.

I ran into an issue upgrading Node with Homebrew and our Node version manager (discussed later). So we'll want to install it and pin the formula so it doesn't update to any newer versions. You can always 'unpin' it later on.  

    brew install node
    brew pin node
    

Enter fullscreen mode Exit fullscreen mode

Casks are an extension of Homebrew and it allows you to install applications with one command. It brings together 3888 Casks maintained by 5169 contributors. Search the casks [here](https://formulae.brew.sh/formula/).

Install these essentials:  

    brew cask install ‘hyper’
    brew cask install ‘visual-studio-code’
    brew cask install ‘google-chrome’
    

Enter fullscreen mode Exit fullscreen mode

~I ran into an issue of VSCode not wanting to open with MacOS's new Security and Privacy settings. If they fail to open you will have to go to System Preferences (Security and Privacy > General tab) and it will show at the bottom that you still wish to open the application.~

Also, if Chrome isn’t your browser of choice feel free to search another or use Safari. Firefox Developer Edition is getting quite good!

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#hyper-terminal-amp-ohmyzsh)Hyper Terminal & oh-my-zsh
----------------------------------------------------------------------------------------------------------------------------------

Let’s talk a bit about that first Cask we installed, [Hyper™](https://hyper.is/) terminal. It’s created by the individuals over at [Vercel](https://vercel.com/) and their tools are incredible. I’ve really enjoyed using them.

Hyper is an [Electron](https://electronjs.org/) build terminal replacement. It’s completely built on HTML, CSS, and JavaScript. Cool, right?

We will continue to utilize Hyper as our main terminal for the duration of this setup tour.

Every new Catalina Mac will be utilizing _zsh_ shell or “z shell” instead of a Bash shell. We are going to have this setup for our machines now. If you already were on Bash in a previous installation it will still remain. Zsh is only for new accounts created with Catalina.

Lets check if its installed already:  

Enter fullscreen mode Exit fullscreen mode

If not lets install it:  

Enter fullscreen mode Exit fullscreen mode

After the install lets set it as our default shell:  

Enter fullscreen mode Exit fullscreen mode

You may have to use `sudo` here again or it will ask you to enter your login credentials to change the system shell. Sudo will be used less frequently after installing the n package later on, but I didn't run into any huge issues with sudo after a clean install of MacOS.

After you have switched log out and log back in or restart your machine.

Once you are logged back in fire up Hyper and enter:  

Enter fullscreen mode Exit fullscreen mode

Expected result: `/bin/zsh`

_Oh My Zsh_ is an open-source driven framework for your zsh config. It comes with a bunch of different plugins, themes, and helpers to make your terminal look awesome inside.

Install using:  

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    

Enter fullscreen mode Exit fullscreen mode

Please view [Using Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh#using-oh-my-zsh) and get yourself acquainted. I’m running everything by default, but there are a ton of themes to choose from.

I have a helpful alias setup with my zshrc file to keep Homebrew up to date and my system running smoothly that I manually enter when I begin my development work.

To view your setup file:  

Enter fullscreen mode Exit fullscreen mode

Arrow down until you see “# Example Aliases”  
Under this we can add:  

    alias brewup=‘brew update; brew upgrade; brew cleanup; brew doctor’
    

Enter fullscreen mode Exit fullscreen mode

To save the file: `Control + O`

To exit: `Control + X`

Every time we enter `brewup` in Hyper we will be able to utilize all three commands at once. A better solution would be to have this on a crontab cycle where it utilized every week or so, but I have yet to implement that yet!

Another helpful alias we could create while in the setup file access this setup file. We can make one while were in the file!  

    alias zshconfig=“code ~/.zshrc”
    

Enter fullscreen mode Exit fullscreen mode

**Bonus:**  
Two of the best features of having zsh is utilizing two necessary and useful plugins, zsh-autosuggestions & zsh-syntax-highlighting.

To install both of these you first clone them both in your oh-my-zsh custom plugins folder.  

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    

Enter fullscreen mode Exit fullscreen mode

After cloning open your zshconfig and load them both into the plugins area of your settings file like so.  

    plugins=(
        zsh-autosuggestions
        zsh-syntax-highlighting
    )
    

Enter fullscreen mode Exit fullscreen mode

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#git-and-ssh)Git and SSH
----------------------------------------------------------------------------------------------------

Git will be used as a version control system for your code. Most new Mac's come with Git pre-installed so this will be an overview of initializing it. You will constantly be committing and pushing code using Git. SSH will uniquely identify you (and your computer) when your computer is communicating with other computers. Imagine that. Just think of it as a fancy password. A lot of applications on the web require you to authenticate with SSH, like Heroku and Github.

_Git_ first then. Let’s go back to Hyper.  

    git config —global user.name “First Last” (keep the quotes)
    git config —global user.email “Email” (keep the quotes)
    

Enter fullscreen mode Exit fullscreen mode

**Use the same email address for Heroku, Git, Github, and SSH.**

Confirm the changes have been made using:  

    git config —get user.name
    git config —get user.email
    

Enter fullscreen mode Exit fullscreen mode

You should see your user name and email printed.

I have added some alias commands to my git config file. Take a look at yours yourself using:  

Enter fullscreen mode Exit fullscreen mode

_Remember we added the shell command in VS Code to view a specific file. You just used it!_

Mine looks like this.  

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

The alias commands allow me to just type `git pom` instead of… `git push origin master`.

To see a list of your config settings in Terminal check it with:  
`git config —list`

### [](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#ssh)SSH

SSH the fancy password. Got it. Let’s check if you have one already.  

Enter fullscreen mode Exit fullscreen mode

This will return “No such file or directory” if you don’t have an SSH key yet.

[Generate a key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) using:  

    ssh-keygen -t rsa -b 4096 -C “student@example.com”
    

Enter fullscreen mode Exit fullscreen mode

**_[student@example.com](mailto:student@example.com)_ is your actual email that you used with Git.**

Expected result:  

    Generating public/private rsa key pair.
    Enter file in which to save the key (/Users/student/.ssh/id_rsa):
    Created directory ‘/Users/student/.ssh’.
    Enter passphrase (empty for no passphrase):
    Enter same passphrase again:
    Your identification has been saved in /Users/student/.ssh/id_rsa.
    Your public key has been saved in /Users/student/.ssh/id_rsa.pub.
    The key fingerprint is:
    88:54:ab:77:fe:5c:c3:7s:14:37:28:8c:1d:ef:2a:8d student@example.com
    

Enter fullscreen mode Exit fullscreen mode

You’ll be asked to enter a passphrase next. I suggest using one.

**Public vs. Private Keys**  
If you open:  

Enter fullscreen mode Exit fullscreen mode

You will see two files an “id\_rsa” file and “id\_rsa.pub” file. The .pub is the public and can be shared freely, the \_rsa must be kept a secret.

Go ahead and add your generated key to the authentication agent using:  

Enter fullscreen mode Exit fullscreen mode

You will be prompted your passphrase and the identity will be added.

Once this is completed you should head to Github and configure your newly generated key to interact properly with Github. Github has a helpful guide [here](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account).

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#visual-studio-code)Visual Studio Code
------------------------------------------------------------------------------------------------------------------

[![Alt Text](https://res.cloudinary.com/practicaldev/image/fetch/s--EpnVeuWi--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/3orxedhaj4w3ywhxh4wz.png)](https://res.cloudinary.com/practicaldev/image/fetch/s--EpnVeuWi--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/3orxedhaj4w3ywhxh4wz.png)

Visual Studio Code is more powerful than ever, thanks to awesome updates by the Microsoft team, and the amazing developer made extensions. I always hear those arguments about the hype with vim or utilizing your text editor through your command line, but now I can’t even imagine going that route.

Go ahead and open up VSCode from Alfred. Previously installed using Casks.

First, were going to view the Command Palette. The Command Palette is located under the View tab. Once it is clicked a drop down will appear and you will then search `shell command: Install ‘code’ command in PATH’` and hit Enter.

[![Alt Text](https://res.cloudinary.com/practicaldev/image/fetch/s--pu6_tTMb--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/z92imd0glp5m12jqj6py.png)](https://res.cloudinary.com/practicaldev/image/fetch/s--pu6_tTMb--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/z92imd0glp5m12jqj6py.png)

This enables you to type `code ‘filename’` in Hyper terminal to open up a file in VS Code. Really powerful and useful!

At the Welcome screen select both, “Install support for JavaScript” and “Install support for keyboard shortcuts of Atom.” (Also found [here](https://marketplace.visualstudio.com/items?itemName=ms-vscode.atom-keybindings))

To view the keyboard shortcuts for Atom go [here](https://blog.bugsnag.com/img/posts/atom-cheat-sheet.png). They will be considerably helpful with the increasing the speed of your coding.

Locate the sidebar icon for Extensions and search for these essential installs:

*   npm Intellisense
*   Path Intellisense
*   ESLint
*   Prettier - Code formatter
*   Live Share
*   Bookmarks
*   Debugger for Chrome (if using Chrome)
*   Auto Close Tag
*   Bracket Pair Colorizer 2
*   DotENV
*   GraphQL
*   Live Server
*   indent-rainbow

### [](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#more-vscode-amp-bonus-theme-changes)More VSCode & Bonus theme changes

Some of these extensions aren’t plug and play and will require some setup. Just read through the links and check them out before installing.

[Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock) allows you to change the border window of VSCode to discern different workspaces.

[Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight) highlights your style colors in the editor.

[Babel JavaScript](https://marketplace.visualstudio.com/items?itemName=mgmcdermott.vscode-language-babel) syntax highlighting for today's JavaScript standard.

The great thing about VSCode is that it has Git support built in once a repository has been initialized, but [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) allows you to view your history from within VSCode.

[Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced) allows you to preview Markdown files, typically Github README's.

[Simple React Snippets](https://marketplace.visualstudio.com/items?itemName=burkeholland.simple-react-snippets) are snippets to speed up your React development.

_Themes to search:_

*   Atom One Dark
*   Atom One Light
*   Github theme
*   Material theme pack

Icon pack:

*   Material icon

For my VSCode theme, I use the one built by Vercel. This one requires you to install via Hyper. What can I say I am a fanboy.  

    curl https://zeit-theme.now.sh | tar xvz -C ~/.vscode/extensions
    

Enter fullscreen mode Exit fullscreen mode

Restart VSCode, select 'ZEIT' in Preferences > Color Theme

Send them feedback if you run into any issues or wish to see changes!  
[Shu Ding original tweet](https://twitter.com/shuding_/status/1074393919750881280?lang=en)

***

The following are more _theme_ preferences that I have and love. I wanted to share them with you before moving forward.

_Google Chrome Dev Tools Theme_  
I recommend adding a theme to your Chrome Developer Tools as well. I use New Moon by Tania Rascia. There is a guide to getting this setup in the Github repository located [here](https://github.com/taniarascia/new-moon-chrome-devtools).

_JetBrains Mono Font_  
Another thing I have discovered is the font JetBrains Mono. I use this with VSCode and with Hyper and it's a wonderful development typeface. Install it [here](https://www.jetbrains.com/lp/mono/) and then apply it to both applications.

To enable it in Hyper:

*   Enter Preferences by hitting `CMD + ,` or using your new command with VSCode `code ~/.hyper.js`

**NOTE:**

> If you use the first command it will most likely open with Chrome. You want to set your JavaScript files to open automatically with VSCode instead. When it opens in Chrome:

*   Select File > Save Page As...
*   Locate the file in your Downloads folder
*   Right-click the file
*   Select Get Info
*   Expand the Open with: arrow
*   Select VSCode
*   Select Change All... and confirm

After loading up your Hyper Preferences file you should change the fontSize to 16 and then add "JetBrains Mono" to the beginning of the fontFamily preference. Include the double-quotes.

This is similar in VSCode. Enter the Command Palette by hitting `CMD + SHIFT + P` and search 'user settings'. It should be on the main screen and add 'JetBrains Mono' to the beginning of the Font Family setting. Single quotes is fine in VSCode.

### [](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#ninstall-amp-yarn)n-install & Yarn

Homebrew installs the latest version of Node. Although, you may run into situations or learning where you need to utilize a certain version of Node.

I use n-install to manage my Node versions.  
[n - Node Version Manager](https://github.com/tj/n)

Install using:  
`brew install n`

n is a no BS, straightforward, simple version manager. It allows you to install the latest version of Node or utilize a stable version of your choosing. Earlier, Homebrew installed the latest version of Node. n allows us to utilize the LTS version or other versions we want of Node on the fly. Before installing I would suggest setting up your user permissions (code below) and cache folder if it's not present. However, it should be applied upon install.  

    # make cache folder (if missing) and take ownership
    sudo mkdir -p /usr/local/n
    sudo chown -R $(whoami) /usr/local/n
    # take ownership of node install destination folders
    sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
    

Enter fullscreen mode Exit fullscreen mode

Another option is Node Version Manager.  
[nvm: Node Version Manager](https://github.com/creationix/nvm)

Check out both repo’s and make your decision. You’ll want to follow the instructions to get this installed.

### [](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#yarn)Yarn

[Yarn](https://yarnpkg.com/lang/en/) is another package manager for code. Version 2 was just released and I'm happy to get started with it. It is an elegant, reliable tool that you will definitely utilize.

Install using:  
`brew install yarn`

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#mysql-mongodb-amp-a-note-on-other-databases)mySQL, MongoDB & a note on other Databases
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

As a developer, you will need to utilize databases. I have currently only utilized MySQL and MongoDB. Databases are a whole topic within their own and it’s important to spend some time learning each of these! I would turn to a simple Codecademy course for MySQL and MongoDB has a great educational portion of their site dedicated to having you learn it first hand.

Databases are rapidly changing, but these two are tried and true. I continue to use these frequently and depending on your project you will have different requirements or wish to use something newer like GraphQL (query language), EdgeDB, or FaunaDB.

For mySQL, you need to tap the Homebrew services first and then install.  

    brew tap homebrew/services
    brew install mysql@5.7
    

Enter fullscreen mode Exit fullscreen mode

For MongoDB it's similar, but we need to tap MongoDB specifically.  

    brew tap mongodb/brew
    brew install mongodb-community@4.2
    

Enter fullscreen mode Exit fullscreen mode

Additional setup may be required before using these databases. Follow along with the prompts in the terminal when using for the first time and you should be good to go!

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#command-line-interfaces)Command Line Interfaces
----------------------------------------------------------------------------------------------------------------------------

A lot of tools today are offering a whole set of functionality to interact with their products. I believe utilizing CLI’s is massively important for enhancing productivity when developing. I've listed ones that are documented well so you will have to check it out to figure out how to use them optimally.

We didn’t get to go over these in the first edition, but let’s get into it.

[Vercel CLI](https://vercel.com/download) is Vercel’s CLI tool for dead simple deployment.  
`npm install -g vercel`

[Netlify](https://www.netlify.com/docs/cli/) is a no frills builder, deployment tool and manager of modern web projects.  
`npm install -g netlify-cli`

[Surge](https://github.com/sintaxi/surge) is a tool to publish web apps to a CDN.  
`npm install -g surge`

[Gatsby](https://www.gatsbyjs.org/docs/gatsby-cli/) is a Static Site Generator and Progressive Application Generator.  
`npm install -g gatsby-cli`

~[create-react-app](https://github.com/facebook/create-react-app) creates a React app.  
`npm install -g create-react-app`~

[Vue CLI](https://cli.vuejs.org/) creates a Vue app.  
`npm install -g vue-cli`

[Hub](https://github.com/github/hub) is a great tool to interface with Github from the command line. Github CLI is currently in beta.  
`brew install hub`

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#additional-applications-not-originally-mentioned)Additional applications not originally mentioned
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Notion](https://www.notion.so/product) is an all in one workspace. A truly incredible tool.

[Spectrum](https://spectrum.chat/) is a community platform built for technology communities.

[Numi](https://numi.io/) calculator. I love its note style calculation.

[Magnet](http://magnet.crowdcafe.com/) is a workspace organizer for Mac. This is a _paid_ App located in the App Store. The download link on the site will direct you. I recommend it over Spectacle.

[Pocket](https://getpocket.com/) is a save for later application. Insert articles, videos, notes, and pretty much anything else.

[Parcel](https://parcelapp.net/) is the best delivery tracker.

[Dashlane](https://www.dashlane.com/) is my password manager of choice.

[Spark](https://sparkmailapp.com/) is email, done right.

[Postman](https://www.getpostman.com/) is an Application Programming Interface (API) development Graphical User Interface (GUI). Yeah… a mouthful, but incredible.

[Dozer](https://dozermac.com/) allows you to clean up your menu bar.

[](https://dev.to/v3frankie/setup-your-mac-for-development-2020-edition-1c8a#conclusion)Conclusion
--------------------------------------------------------------------------------------------------

I hope this is a valuable resource for all Mac users! Development has been a continually changing environment and it’s easy to not have a direction to put yourself in to have a standard setup accessible. This post will continue to be extended in the future and I look forward to providing some guidance then.

If you run into hurdles, errors, or mistakes. Please let me know so I can correct them!

> _Updated 2/4/2020_ I had a couple link errors and typos in this article. They have now been fixed. Also, I'm going to be posting a minified version of this without all of the fluff. Keep an eye out for that.
> 
> _Updated 2/11/2020_ A minified version of this post and all of the steps included have been created. View the minified version [here](https://dev.to/v3frankie/minified-setup-your-mac-for-development-2020-edition-32l).
> 
> _Updated 3/9/2020_ Added 'brew pin node' step after installing, zsh plugins, and removed VSCode note about it not being notarized with MacOS.
> 
> _Updated 3/27/2020_ Removed create-react-app from global install list because it is now recommended to run using npx.
> 
> _Updated 9/04/2020_ Updated ZEIT to Vercel and respectively now global install.
