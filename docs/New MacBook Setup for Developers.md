https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma

> Yet Another MacBook Setup (YAMS)

# New MacBook Setup for Developers
[![Dan Vega](https://res.cloudinary.com/practicaldev/image/fetch/s--xEhm4RSH--/c_fill,f_auto,fl_progressive,h_50,q_auto,w_50/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/123336/befc7694-d0ab-46eb-801a-ed67a9258ad6.png)](https://dev.to/therealdanvega)

[Dan Vega](https://dev.to/therealdanvega)

Posted on 23 Dec 2018 • Updated on 8 May 2019

[![MacBook Setup](https://res.cloudinary.com/practicaldev/image/fetch/s--BcXcD88z--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/5sn1ah1x2i3kh1pqi1kg.jpg)](https://res.cloudinary.com/practicaldev/image/fetch/s--BcXcD88z--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/5sn1ah1x2i3kh1pqi1kg.jpg)

I thought I would take some time and document what I do when I get a new machine. This is going to walk through some preferences I configure, the applications I install and the settings I use for different programs. I am always curious to see how other software developers are setting up their development machines so I figured it would be a good opportunity to share mine.

I am a Software Developer so most of my configuration will be around programming. My current MacBook configuration is as follows:

*   MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports)
*   Processor: 2.3 GHz Intel Core i5
*   Memory: 16 GB
*   Startup Disk: Macintosh HD
*   Graphics: Intel Iris Plus Graphics 640 1536 MB
*   Storage: 500 GB

When you power on your MacBook you are going to run through the setup. I usually configure anything I can here like Wi-fi & Apple ID. The rest of the instructions will assume you made it through the setup and are on the desktop.

_If you don't want to have to wait for disk encryption (error in macOS updates section) don't select that during setup and perform that at a later time_

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#macos-updates)macOS Updates
--------------------------------------------------------------------------------------------------

The first thing I do is run any updates that are available. In my case the laptop came preloaded with macOS Sierra and macOS Mojave has been released.

So my first step is going to be to update to macOS Mojave. You can download this and run this from the App Store.

_Error: You may not install to this volume because it is currently being encrypted_

If you get the error above then you chose the option of encrypting your hard drive during setup. Make sure you have the power plugged in and go to System Preferences > Security & Privacy > File Vault. From there you can see the progress of encryption and when it's complete you can launch the macOS Mojave installer.

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#app-store)App Store
------------------------------------------------------------------------------------------

If you have signed in with your Apple Id you will be taken directly to the Apple Store. This is a good time to run any updates that are available.

_You might run into issues here because the apple id that downloaded them is not you. In this case, I just removed those apps I am not using (GarageBand, Numbers, Pages,iMovie...)_

To remove applications I like installing [AppCleaner](https://freemacsoft.net/appcleaner/). This will make sure that the application and any related files will be removed.

Another application I really love for this and so many other things is [Clean My Mac](https://macpaw.com/cleanmymac)

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#garage-band)Garage Band

Unfortunately, AppCleaner only works for 3rd party installed applications and won't remove GarageBand. You need to remove this manually and while there are a few more locations these are the main 3 you should remove. If you're going to use apple sound effects in other programs please read up on this before deleting.

*   /Applications/GarageBand.app
*   /Library/Application Support/GarageBand/
*   /Library/Audio/Apple Loops/Apple/

Empty Trash

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#getting-started)Getting Started
------------------------------------------------------------------------------------------------------

Anything I can install using [HomeBrew](https://brew.sh/) I will. Before you install HomeBrew though you need to install the Xcode command line utilities. Open up a new terminal and type the following command. Even if you plan on installing Xcode I believe you still need to install these now as they moved them out of the standard installation.  

The Command Line Tools Package is a small self-contained package available for download separately from Xcode and that allows you to do command line development in OS X. It consists of two components: OS X SDK and command-line tools such as Clang, which are installed in /usr/bin.

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#homebrew)HomeBrew

As I said earlier I use HomeBrew to install anything that it can install. I recently found out about cask which makes my life so much easier. If you normally use brew to install something like google-chrome you know that you have to then drag it into the applications folder. If you use cask it will not only download the package but also move it into the applications folder.

[HomeBrew Website](https://brew.sh/)

Installation:  
/usr/bin/ruby -e "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/master/install)](https://raw.githubusercontent.com/Homebrew/install/master/install))"

Post Installation

*   If you need help with brew you can run brew help.
*   brew update - You shouldn't have anything to update but its good to check.
*   brew search 'term' to search for brews

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#terminal-bash-iterm)Terminal / Bash / iTerm
------------------------------------------------------------------------------------------------------------------

Now that we have HomeBrew installed it's time to start installing some software. The default version of bash is v3.2 and I want to go ahead and upgrade this to 4.x. There is a [really good guide](http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/) here that you can follow to upgrade bash.

*   bash -v (bash-3.2)
*   brew install bash
*   if you close the terminal or open a new tab it will show 4.4 but this still isn't the default version.
*   **which bash** will show you what bash you're using.

Now that we have bash updated we need to make that our default shell. To do so you need to edit /etc/shells  

    sudo vi /etc/shells
    add the path /usr/local/bin/bash
    comment out the others
    
    Change to the new shell
    chsh -s /usr/local/bin/bash 
    

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#bash-profile)Bash Profile

Now that we have bash updated I need to customize my shell. Look in your home directory and see if you have a .bash\_profile and if you don't you can create one using the following command.  

This is where you can add all kinds of customization's to bash. I have included [my .bash\_profile](https://github.com/cfaddict/new-macbook-setup/blob/master/.bash_profile) in this repository if you want to check it out. As always if you have questions about what's in there please let me know.

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#iterm2)iTerm2

For the longest time I used the terminal and even had a couple of people call me out on it 😂

I am now using iTerm2 full time and I absolutely love it. If you want to find out about some of the features & configurations it gives you please [check out their website](https://www.iterm2.com/features.html).  

One thing I like to do is customize the colors and a great resource for that is [https://iterm2colorschemes.com/](https://iterm2colorschemes.com/)

This is a list of my favorite color schemes.

*   Dracula
*   FirefoxDev
*   Github
*   Grape
*   Grass
*   Hipster Green
*   Homebrew
*   Man Page
*   Material
*   MaterialDark
*   Novel
*   OceanicMaterial

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#development-setup)Development Setup
----------------------------------------------------------------------------------------------------------

Now that I have a nice looking command line full of features its time to start installing all of the different applications I will use. If you have any questions about any of these or why I install them please see the contact me section below.

*   brew install git
*   brew cask install google-chrome
*   brew cask install google-chrome-canary
*   brew cask install firefox
*   brew cask install firefox-developer-edition
*   brew cask install visual-studio-code
*   brew cask install visual-studio-code-insiders
*   brew cask install intellij-idea
*   brew cask install eclipse-java
*   brew cask install postman
*   brew cask install docker
*   brew cask install spectacle
*   brew install tree
*   [https://github.com/sindresorhus/quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#visual-studio-code)Visual Studio Code

If you aren't using Visual Studio Code, what the heck are you waiting for? All jokes aside I am sure you have probably heard of code by now and here are a few ways that I customize it.

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#extensions)Extensions

I used to hate having to install Visual Studio Code on a new machine. The reason for that is I have grown to love the editor so much that I have an extension for everything. I use to install them one by one and when you have to do that 35 times it gets really old.

If you want to get a list of extensions currently installed on your machine you can use the following command.  

The nice thing about that is you can install visual studio code extensions using the command line.  

    code --install-extension ${extension-name}
    

You can pipe the results of your list into a file or if you wish you can grab mine from this repository. Once you have that file you can run the following to install all of your extensions. if you're interested in what extensions I am using I have [included my list of extensions](https://github.com/cfaddict/new-macbook-setup/blob/master/vscode-extensions.txt).  

    cat extensions.txt | xargs -L1 code --install-extension
    

After I did this and tweeted about it a lot of people let me know about another extension called sync settings. This will sync all of your visual studio extensions, settings, key bindings, etc across machines.

[https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#fonts)Fonts

I am a huge fan of the Dank Mono font. I install this and use it for most of my development. If I am writing documentation I will sometimes use a different font, it just depends.

[Dank Mono](https://dank.sh/)

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#user-settings)User Settings

I have included my user settings in case you want to see what I use. I don't have much here but will try and update these soon.

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#node-amp-npm)Node & NPM

If you're going to install Node I think the best way to do so is by using [Node Version Manager (NVM)](https://github.com/creationix/nvm). This to me has a few advantages over installing it from brew or even directly downloading it from their website.

*   You can install multiple versions of Node
    *   You can set a default version
    *   You can switch between these versions easily
*   Installs in your home directory
    *   You don't need special privileges
    *   No more sudo when installing packages globally

Once you have NVM you can install the latest stable release (v10.12.0 at the time of this writing) using the following command.  

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#global-packages-to-install)Global Packages to Install

    npm install -g tldr
    npm install -g typescript
    npm install -g @vue/cli
    npm install -g vuepress
    npm install -g @angular/cli
    npm install -g eslint
    npm install -g gitbook-cli
    npm install -g lodash
    

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#git-config)Git Config

There is usually a default install of git but we used brew to install the latest earlier. Now that we are on the latest version of git we need to do a little configuration.

.gitconfig

*   git config --global user.email "[dan@techelevator.com](mailto:dan@techelevator.com)"
*   git config --global user.name "Dan Vega"
*   Aliases
    *   git config --global alias.add-commit '!git add -A && git commit'

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#databases)Databases

*   [PostgreSQL](https://www.postgresql.org/)
*   [Mongodb](https://www.mongodb.com/)
*   [MySQL](https://www.mysql.com/)

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#postgresql)PostgreSQL

The easiest way to install PostgreSQL is by using HomeBrew.  

When this is done installing you can have it start up automatically using the following command.  

    brew postgresql-upgrade-database
    

I don't need it that often so when I want to run it I can run the following command:  

    pg_ctl -D /usr/local/var/postgres start
    

Better yet I can add a few of aliases to my bash profile to make this even easier.  

    alias start_postgres="pg_ctl -D /usr/local/var/postgres start"
    alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
    alias pgup="start_postgres"
    alias pgdown="stop_postgres"
    

Our students also use DBVisualizer so I like to have that installed as well.  

    brew cask install dbvisualizer
    

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#mongodb)MongoDB

#### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#mysql)MySQL

To get started with MySQL run the following command:  

To have MySQL automatically run when you computer starts:  

    brew services start mysql
    

OR you can start / stop it manually  

To be consistent with our PostgreSQL we can create a few aliases.  

    alias start_mysql="mysql.server start"
    alias stop_mysql="mysql.server stop"
    alias mysqlup="start_mysql"
    alias mysqldown="stop_mysql"
    

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#sdkman)SDKMan

This is one of my favorite version managers because I use a lot of the Software Development Kits (SDKs) it manages. If you haven't heard of [SDKMan check them out here](https://sdkman.io/install). This is a list of SDKs I manage using SDKMan.

*   Java
*   Groovy
*   Grails
*   Gradle
*   Maven
*   Micronaut
*   Spring Boot
*   Kotlin

Here is a full list of SDKs [https://sdkman.io/sdks](https://sdkman.io/sdks)

**Installation:** curl -s "[https://get.sdkman.io](https://get.sdkman.io/)" | bash

If you just type sdk install candidate it will install the latest stable version or you can install a specific version  

    sdk install java 8.0.191-oracle
    

If you need to get a list of versions you can ask for it:  

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#browser-configuration)Browser Configuration

Turn on sync and sign into chrome, this brings all of my bookmarks and extensions. If you have any questions about any of these or why I install them please see the contact me section below.

**Extensions**

*   LastPass
*   Grammarly
*   Color Picker
*   LiveReload
*   uBlock Origin
*   privacy badger
*   oneTab
*   JSONViewer
*   Vue devtools

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#system-preferences)System Preferences
------------------------------------------------------------------------------------------------------------

I have a few things that I customize in preferences:

**Trackpad:**  
System Preferences > Trackpad > Scroll & Zoom:  
I uncheck scroll direction: Natural (It doesn’t feel natural for me)

**Dock:**  
System Preferences > Dock  
Change the size to small and turn on magnification  
I also remove all icons from the dock that I don't use

**Avatar:**  
System Preferences > Users & Groups > Edit Avatar

**Theme:**  
macOS Mojave introduced light & dark themes. I still stick with the light theme even though I use dark themes in almost every editor or program that I use. If you want to change this later simply go to System Preferences > General > Appearance

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#finder)Finder
------------------------------------------------------------------------------------

I like to customize Finder so I can get to all of my most used places quickly.

**Locations**

*   Add Macintosh HD to locations so I can always get to the root hard drive
*   Home /Users/vega
*   screenshots (configure screenshot utility to save here)
    *   open screenshot > options > other location

**A few tips in finder**

*   cmd+shift+h (takes you home)
*   cmd . (show hidden files and folders)

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#work-setup)Work Setup
--------------------------------------------------------------------------------------------

These are a list of applications and configuration I need for work. You may not need some of these tools but I thought I would share them here anyway.

Last Pass  
Slack  
Twitter (App Store)  
Screenflow

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#adobe-creative-suite)Adobe Creative Suite

I am a huge fan of Adobe and all of their products!

*   Photoshop CC
*   Illustrator CC
*   Premiere Pro CC
*   After Effects CC
*   Premiere Rush CC
*   XD

### [](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#windows-10)Windows 10

At work I need to dual boot with macOS and Windows 10. We have a .NET track where the students use Windows (Visual Studio, SQL Server, etc...) and I need to be able to support them. The great thing about this is Apple has made this stupid simple using BootCamp Assistant. If you want to read more about this check out the document below.

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#boot-camp-windows-10)Boot Camp Windows 10
----------------------------------------------------------------------------------------------------------------

This document is going to outline what you need to do to install Windows 10 on Mac OS. The first thing you should do is check out the official support documentation from Apple. This document outlines things you should know before you begin, where to get a Windows 10 ISO image and the steps you need to get everything working.

[https://support.apple.com/en-us/HT201468](https://support.apple.com/en-us/HT201468)

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#before-we-start)Before we start
------------------------------------------------------------------------------------------------------

*   You will need enough free disk space to create a Boot Camp disk partition with a minimum size of 64GB. 128GB is recommended for the best experience.
*   Unplug any external devices such as keyboards, mouse and monitors.
*   Plug in your power source just in case you walk away from the computer. The last thing you want to happen is for the computer to die mid-install.

**Steps**

*   Download Windows 10 ISO
*   Run Boot Camp Assistant
*   Select Partition (128GB Recommended)
*   Install Windows

\*_If you go through ISO download wizard and it says "Windows 10 Education English" don't worry about that. When we install Windows we can select the version (Education/Home/Professional) that we want._

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#windows-installation)Windows Installation
----------------------------------------------------------------------------------------------------------------

After the partition is created and reboots into Windows

*   Select your language
*   Enter your product key (It is OK if you don't have one, select I don't have a product key)
*   Select Windows 10 Version (Win 10 Home)
*   Accept the license terms (Read every single word)
*   When you are asked to create a username don’t put a space in your name. When you create a username it is going to be the name of the users home folder /Users/Dan Vega/. I don't know about you but I am not a fan of spaces.
*   Enter password and Security questions/answers
*   Cortana (I turn off)
*   Privacy Settings ( I turn all of these off)

Post-Windows Installation

*   Install Boot Camp on Windows (Restart after recommended)
*   Connect to Wireless Network
*   Run Apple Software Update (Start menu) (Restart Required)
*   Update Date/Time Settings
*   Enable Developer Mode
*   Activate Windows (if you have a product key)
    *   Personalize Windows

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#software-installation)Software Installation
------------------------------------------------------------------------------------------------------------------

I am not installing a full suite of applications here because I am not using this full time.

*   [Google Chrome](https://www.google.com/chrome/)
*   [Visual Studio 2017 Community](https://visualstudio.microsoft.com/downloads/)
    *   Select ASP.NET Web Development (This will give you .NET Core)
*   [SQL Server 2017 Express Edition](https://www.microsoft.com/en-us/sql-server/sql-server-editions-express)
*   [SQL Studio Management Studio (SSMS) 17.9 GA](https://docs.microsoft.com/en-us/sql/ssms/sql-server-management-studio-changelog-ssms?view=sql-server-2017#ssms-179-latest-ga-release)
*   [Ubuntu on Windows](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (If you want bash)
*   [Visual Studio Code](https://code.visualstudio.com/)

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#switching-between-operating-systems)Switching Between Operating Systems
----------------------------------------------------------------------------------------------------------------------------------------------

If you want to switch between operating systems you need to restart the computer and hold the option key down. When the computer boots it will ask you which partition you want to boot in. You can only run one operating system at a time and you can’t run both in parallel. This is perfectly fine for my use case but if you want to run both simultaneously check out [Parallels](https://www.parallels.com/products/desktop/)

[](https://dev.to/therealdanvega/new-macbook-setup-for-developers-2nma#contact-me)Contact Me
--------------------------------------------------------------------------------------------

If you have any questions about anything I am using or have suggestions for something I am missing please don't hesitate to comment or reach out to me. As always...

_This article was first posted on my blog at [https://www.danvega.dev/blog](https://www.danvega.dev/blog). If you found this article interesting please consider [subscribing to my newsletter](https://www.danvega.dev/signup/) or following me on [Twitter](http://twitter.com/therealdanvega)._
