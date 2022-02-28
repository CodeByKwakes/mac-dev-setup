https://betterprogramming.pub/quickly-set-up-your-mac-development-environment-using-a-simple-script-276c6b3074b1

> One of the things that may prevent us from changing or even thinking of changing our working environment is the necessity to perform all the installations and the configurations that we have already…

# Quickly Set Up Your Mac Development Environment Using a Simple Script
Laptop prepares your working macOS machine for web and mobile development
-------------------------------------------------------------------------

![](https://miro.medium.com/max/1400/0*oFHXAZxh5U5hAgFN)

Photo by [Christopher Gower](https://unsplash.com/@cgower?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com/?utm_source=medium&utm_medium=referral)

One of the things that may prevent us from changing or even thinking of changing our working environment is the necessity to perform all the installations and the configurations that we have already set up for software development.

Fortunately, there is a cure for this pain. [_Laptop_](https://github.com/thoughtbot/laptop) is a script that prepares your working macOS machine for web and mobile development.

![](https://miro.medium.com/max/1400/0*oG636g4vznKOagO9.png)

Script Setup
------------

The script setup is made up of:

macOS tools
-----------

*   [Homebrew](http://brew.sh/) for managing operating system libraries.

**Unix tools**
--------------

*   [Exuberant Ctags](http://ctags.sourceforge.net/) for indexing files for vim tab completion.
*   [Git](https://git-scm.com/) for version control.
*   [OpenSSL](https://www.openssl.org/) for transport layer security (TLS).
*   [RCM](https://github.com/thoughtbot/rcm) for managing company and personal dotfiles.
*   [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) for finding things in files.
*   [Tmux](http://tmux.github.io/) for saving project state and switching between projects.
*   [Watchman](https://facebook.github.io/watchman/) for watching for filesystem events.
*   [Zsh](http://www.zsh.org/) as your shell.

**Heroku tools**
----------------

*   [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) and [Parity](https://github.com/thoughtbot/parity) for interacting with the Heroku API.

**GitHub tools**
----------------

*   [Hub](http://hub.github.com/) for interacting with the GitHub API.

**Image tools**
---------------

*   [ImageMagick](http://www.imagemagick.org/) for cropping and resizing images.

**Testing tools**
-----------------

*   [Qt 5](http://qt-project.org/) for headless JavaScript testing via [Capybara Webkit](https://github.com/thoughtbot/capybara-webkit).

**Programming languages, package managers, and configuration**
--------------------------------------------------------------

*   [ASDF](https://github.com/asdf-vm/asdf) for managing programming language versions.
*   [Bundler](http://bundler.io/) for managing Ruby libraries.
*   [Node.js](http://nodejs.org/) and [npm](https://www.npmjs.org/), for running apps and installing JavaScript packages.
*   [Ruby](https://www.ruby-lang.org/en/) stable for writing general-purpose code.
*   [Yarn](https://yarnpkg.com/en/) for managing JavaScript packages.

**Databases**
-------------

*   [Postgres](http://www.postgresql.org/) for storing relational data.
*   [Redis](http://redis.io/) for storing key-value data.

Installation
------------

Installation is quite straightforward and can be done very quickly.

First, you need to download the script:

```
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
```

You can take a look and review it before you run it:

```
less mac
```

Then, you can execute it:

```
sh mac 2>&1 | tee ~/laptop.log
```

Finally, you can review the log:

```
less ~/laptop.log
```

It should take less than 15 minutes to install (depending on your machine).

macOS versions that are supported at the time of this writing are:

*   macOS Mavericks (10.9)
*   macOS Yosemite (10.10)
*   macOS El Capitan (10.11)
*   macOS Sierra (10.12)
*   macOS High Sierra (10.13)
*   macOS Mojave (10.14)

According to Laptop’s [description](https://github.com/thoughtbot/laptop), older versions of macOS may work but aren’t regularly tested.

Laptop is an open-source project, initiated and maintained by [Thoughtbot](https://thoughtbot.com/?utm_source=github). You can view more information about it and its implementation, and have the opportunity to contribute to it by visiting its GitHub [page](https://github.com/thoughtbot/laptop).
