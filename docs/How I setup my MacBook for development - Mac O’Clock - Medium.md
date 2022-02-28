https://medium.com/macoclock/how-i-setup-my-macbook-for-development-cb73f77bfa8d

> In this article I’m going to talk about the setup I would put on every Mac that I have. Anything suggested in this article is free to use, there is no harm to try them all; they are all tested on the…

# How I setup my MacBook for development - Mac O’Clock - Medium
![](https://miro.medium.com/max/1400/1*qjyE8k2Mzxkr5IYUoZlhow.png)

In this article I’m going to talk about the setup I would put on every Mac that I have. Anything suggested in this article is free to use, there is no harm to try them all; they are all tested on the Apple Silicon platform as well, feel free to grab anything you find interesting to your old/new Macs!

Web Browser
-----------

**Update:** Just found that the iOS version of [Microsoft Edge](https://www.microsoft.com/en-us/edge) also has built-in Adblock Plus. I have been using Edge on both MacBook and iPhone for a few days and here is the review:

I use [Brave](https://brave.com/), because of its **_built-in ad-blocking feature_**.

I have the following requirements:

1.  Sync bookmark and history across Macs and iPhone
2.  Ad-blocking on iPhone
3.  Certain extensions on Mac

On iOS, we can install apps like Adblock Plus which acts as a content blocker, but content blockers can only apply to Safari. And because Safari on Mac has a limited number of extensions, I didn’t choose it.

Brave is the only browser on iOS that can block ads, and its Mac version is Chromium-based so I can use my favorite extensions.

Text Editor
-----------

At first I use [Atom](https://atom.io/). Back in 2016, the degree of customisations and the variety of extensions of Atom editor were just mind-blowing! Sometime later, I opened a 20MB SQL file (maybe larger, I can’t remember), the editor was frozen for 2 minutes. That was the first time I think Atom is not the perfect editor.

![](https://miro.medium.com/max/1400/1*Xy7nq6_IjxyShe8uWInGiw.png)

Then [Visual Studio Code](https://code.visualstudio.com/) came out. With all the goodness of Atom and it’s even faster! This is the text editor I keep using for the past few years, and I still love using it today.

![](https://miro.medium.com/max/1400/1*85SCaeS7_YlT8nU-8CdsLQ.png)

Remember to press “Command + Shift + P”, select “Install ‘code’ command in PATH”. Then you can use the terminal to open any files in VS Code by `code path/to/text/file`. Very handy!

**Editor Theme**

![](https://miro.medium.com/max/1400/1*TIiVoK8pX1zA78W0hH8-kw.png)

As a past Atom user, [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme) is a good theme for me. It comes with light and dark themes, it’s good looking and the syntax highlight is clear.

While recently I found a theme called [Nord](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code), which is also very pleasant to look at:

![](https://miro.medium.com/max/1400/1*dCY5qigbo5811S2JCMdHeg.png)

One drawback of this theme is, the comments in the code are very difficult to read, especially in the “git diff” panel. You may improve it by adding the following into your “Settings JSON”:

```
"editor.tokenColorCustomizations": {    "[Nord]": {      "comments": "#81A1C1"    }},"workbench.colorCustomizations": {    "[Nord]": {      "diffEditor.insertedTextBackground": "#5E81AC33"    }},
```

Just press CMD+P, type “settings”. Select “Preferences: Open Settings (JSON)”. Paste the content, then save.

![](https://miro.medium.com/max/1400/1*J1wxq3ZBox7xVNgKk2yI1w.png)

Before the setting

![](https://miro.medium.com/max/1400/1*ftUf2eJnix1dyKTstnBh9Q.png)

After the setting

**Editor Extensions**

I’m a Flutter developer and sometimes develop for JavaScript and Node applications. The extensions are divided into 3 categories, take whatever you need:

_General:_

*   [change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case). Lets you quickly switch the variable name between camel case, snake case, and more.
*   [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv). Support for `.env` file syntax.
*   [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig). Support for `.editorconfig` file. It’s a default extension, isn’t it?
*   [filesize](https://marketplace.visualstudio.com/items?itemName=mkxml.vscode-filesize). Show the current file size in the status bar.
*   [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens). Useful when you see shitty code and want to blame somebody. Turns out that is you in 6 months ago.
*   [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow). Making indentations more obvious and readable.
*   [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode). Code formatter for certain languages.
*   [Sort JSON objects](https://marketplace.visualstudio.com/items?itemName=richie5um2.vscode-sort-json). Needless to explain, right?

_Flutter:_

*   [Android iOS Emulator](https://marketplace.visualstudio.com/items?itemName=DiemasMichiels.emulate). Open Android emulator/iOS simulator without leaving the editor.
*   [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code). Dart language support for VS Code.
*   [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter). Flutter snippets and debugging tool support.

_JavaScript:_

*   [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint). A JavaScript Linter.
*   [Insert use strict](https://marketplace.visualstudio.com/items?itemName=crizant.insert-use-strict). Add “use strict” statement to all your JavaScript files in the workspace all at once.
*   [npm Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense). Autocomplete npm modules in import statements.

**Editor Font**

I use [Fira Code](https://github.com/tonsky/FiraCode) as editor font. Not only because of its readability, but also its ligatures. Try it and you will love it.

![](https://miro.medium.com/max/1056/1*40mQsMg62siL9NaCiSyP-w.png)

\== !== === !== => ≥ ≤

**Editor Icon**

The default VS Code icon on the dock is too bright to look at, [vscode-icons](https://github.com/dhanishgajjar/vscode-icons) to the rescue!

![](https://miro.medium.com/max/1400/1*R6QBI2LgrPsksVtGDtvJ9w.png)

You may also [check out this terminal-icons project](https://github.com/dhanishgajjar/terminal-icons), which is awesome too!

Package Manager
---------------

If you have experience with Linux, you will miss the `apt` command (or `pac` etc., for some other Linux distributions). They make installing software/tools so much easier! There’s no built-in package manager on MacOS, however, we can use [Homebrew](https://brew.sh/).

After installing Homebrew, you may install packages like:

```
brew install [package-name]
```

And remove by:

```
brew uninstall [package-name]
```

The packages are called `formula`, [check here to see the list of formulae available](https://formulae.brew.sh/formula/).

Terminal
--------

A terminal is essential for a developer. If you are still afraid of using it, please try to befriend with it. Mastering unix/linux commands help you to become a good developer. You may start by using `git` commands first. (Yes, no more SourceTree please!)

**iTerm2**

[iTerm2](https://iterm2.com/) is a replacement for the default MacOS terminal app. It supports multiple tabs, split panes, 24bit colors, search, and [even more features](https://iterm2.com/features.html).

![](https://miro.medium.com/max/1400/1*sz-Vxa4ghjxDlG2uSJoQYg.png)

**iTerm2 Color Scheme**

It’s Nord again. [Check out the repository of nord-item2 here](https://github.com/arcticicestudio/nord-iterm2).

**iTerm2 Key Mapping**

![](https://miro.medium.com/max/1400/1*pESHM7KwSOdzX6h9OwyaRA.png)

Remember to go to **iTerm2**\>**Preferences**\>**Profile**\>**Keys**, set to “Natural Text Editing” preset. It enables you to use `Option + Arrow Left` or `Option + Arrow Right` to move the cursor backward or forward by word. You may also use `Option + Delete` to delete a whole word.

**Window Style**

![](https://miro.medium.com/max/1400/1*PDof__ef3iGDEYhUATiV_g.png)

To get this clean and nice-looking window style, go to **iTerm2**\>**Preferences**\>**Appearance**, under the “General” tab, set “Theme” to “Minimal”.

**Status Bar**

![](https://miro.medium.com/max/1400/1*5Yre46GVc7-w5C1bPW9PoQ.png)

For those of you who are interested in the resource monitor at the top of my terminal, go to **iTerm2>Preferences>Profiles>Session**; check the “Status bar enabled” option, and click on the “Configure Status Bar” button to see available components.

![](https://miro.medium.com/max/1400/1*NTupoChFOQYNvOhOnXCwyA.png)

**Z Shell and oh-my-zsh**

Z Shell (or `zsh`) is a replacement for the default bash shell, which packs plenty of great features such as themes and plugins. `Oh-my-zsh` is the most popular plugin framework for Z Shell. You may find setup guides of both on the internet, I’m not going to recap here.

**Powerlevel10k**

`[Powerlevel10k](https://github.com/romkatv/powerlevel10k)` is a theme for zsh. It’s beautiful, fast, and customizable and easy to configure:

![](https://miro.medium.com/max/1400/1*QTKR1lXN6KAskHgtkPtrvQ.png)

The configuration screen of Powerlevel10k

**Terminal Font**

Powerlevel10k suggests using **MesloLGS NF** because it supports a large number of glyphs (icons). If you would like to use your favourite font, you may check if it has a [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts) version, or even patch it yourself. Btw I use FiraCode Nerd Font.

**Oh-my-zsh plugins**

> `git`

One plugin that I can’t live without is the `git` plugin. (And it is installed by default.) It saves me tons of time every day! It’s a set of alias of `git` commands. For example, instead of `git push --set-upstream origin master`, you may just type `gpsup`. How brilliant it is!

> `zsh-autosuggestions`

![](https://miro.medium.com/max/1400/1*8DnJjXKZNsqyikIRwqA0jA.png)

Another very useful plugin is `[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)`. Every time you type something, you get a suggestion in grey. Press “tab” key to get even more suggestions (e.g. options of the command). Run the following command to install this plugin:

Then open your `~/.zshrc` file, add `zsh-autosuggestions`:

```
plugins=(  # other plugins  zsh-autosuggestions)
```

Close the shell and open a new session, it works instantly.

> `zsh-syntax-highlighting`

![](https://miro.medium.com/max/1400/1*_ON3ieRBSZymRBLpUT-jwA.png)

The `[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)` plugin highlights your command in red if it’s incorrect, on the other hand it highlights in green if it’s correct. To install it, run:

Add it to `~/.zshrc`:

```
plugins=(  # other plugins  zsh-syntax-highlighting)
```

Close the shell and open a new session, there you have it.

Window Management
-----------------

Many window management utilities are just too complicated, it takes hours to learn the features and the way they work. Luckily I found one which is free and intuitive for normal people to use: [Rectangle](https://rectangleapp.com/).

![](https://miro.medium.com/max/1400/1*ZmubYS0hN1GXXhzxAIbmkg.png)

Upon installation, you will have an icon on your status bar. Click the icon, the following menu pops up:

![](https://miro.medium.com/max/550/1*freaGZ-prWszSaUnIMYYaA.png)

Apart from the menu, you may just **_drag application windows to the borders/edges of the screen_**, or use the hotkeys to resize/rearrange them.

Reversing Mouse Scroll
----------------------

I occasionally use a mouse on Mac, but using natural scrolling on a mouse feels strange. [MOS](https://mos.caldis.me/) allows me to set mouse scroll direction **_independently_**, while keeping the trackpad in natural scrolling.

![](https://miro.medium.com/max/1400/1*Jzpdzt9VSicJP2ddyOqeQg.png)

Bonus: Password Manager
-----------------------

If you are looking for a **_free_** password manager for **_personal use_**, [Bitwarden](https://bitwarden.com/) is all you want. It generates secure passwords for you. It supports multiple platforms and browsers. And it supports biometric authentication. Of course, you may join a [subscription plan for advanced features](https://bitwarden.com/pricing/).

Conclusion
----------

That’s it! Did you find something useful? Do you have even better choices of software/extensions? Leave comments to let me know!
