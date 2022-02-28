https://dev.to/kat_coding/new-macbook-quick-setup-2b48

> Did anyone else get a new laptop this holiday season? 👀 Here are the steps I follow to get setup...

# 2022 M1 Mac -Quick Setup
[![Kitty code](https://res.cloudinary.com/practicaldev/image/fetch/s--xwT-TGU2--/c_fill,f_auto,fl_progressive,h_50,q_auto,w_50/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/781068/8554abad-59fc-4279-aa7c-fa434c5ce0e3.jpg)](https://dev.to/kat_coding)

[Kitty code](https://dev.to/kat_coding)

Posted on 27 Dec 2021 • Updated on 3 Jan

Did anyone else get a new laptop this holiday season? 👀
Here are the steps I follow to get setup quickly!

[](https://dev.to/kat_coding/new-macbook-quick-setup-2b48#1-show-hidden-folders)1\. Show hidden folders
-------------------------------------------------------------------------------------------------------

```bash
chflags nohidden ~/Library
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
```

[](https://dev.to/kat_coding/new-macbook-quick-setup-2b48#2-install-brew)2\. Install brew
-----------------------------------------------------------------------------------------

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

*   Check your path and make sure path includes your brew location.
    *   Check path: `echo $PATH | tr ":" "\n"\n`
    *   Brew location: `which brew`
    *   (Probably something like `/opt/homebrew/bin`)
    *   If the location is missing, then add it to your `~/.zshrc`, like this: `export PATH=/opt/homebrew/bin:$PATH`

[](https://dev.to/kat_coding/new-macbook-quick-setup-2b48#3-iterm-amp-ohmyzsh-amp-starship)3\. iTerm & OhMyZsh & Starship
-------------------------------------------------------------------------------------------------------------------------

*   iTerm: `brew install --cask iterm2`
*   OhMyZsh: `$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
*   Starship: `brew install starship`
    *   `echo 'eval "$(starship init zsh)"' >> ~/.zshrc`
    *   (Install font & then change font in iTerm settings)
    *   `brew tap homebrew/cask-fonts`
    *   `brew install --cask font-hack-nerd-font`

[](https://dev.to/kat_coding/new-macbook-quick-setup-2b48#4-node-amp-aws-cli-for-aws-development)4\. Node & AWS CLI (for AWS development)
-----------------------------------------------------------------------------------------------------------------------------------------

*   `brew install node@16`
*   `curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"`
*   `sudo installer -pkg AWSCLIV2.pkg -target /`
*   `aws configure` (assuming you already have credentials)
*   `npm install -g aws-cdk`
*   To enable auto-complete, add these to `~/.zshrc`
    *   `autoload bashcompinit && bashcompinit`
    *   `autoload -Uz compinit && compinit`
    *   `complete -C '/usr/local/bin/aws_completer' aws`

[](https://dev.to/kat_coding/new-macbook-quick-setup-2b48#5-java)5\. Java
-------------------------------------------------------------------------

*   For M1, use: [https://www.azul.com/downloads/?os=macos&architecture=arm-64-bit&package=jdk](https://www.azul.com/downloads/?os=macos&architecture=arm-64-bit&package=jdk)

[](https://dev.to/kat_coding/new-macbook-quick-setup-2b48#6-other-apps)6\. Other Apps
-------------------------------------------------------------------------------------

*   Rectangle (window management): [https://rectangleapp.com/](https://rectangleapp.com/)
*   VSCode: [https://code.visualstudio.com/download](https://code.visualstudio.com/download)

Let me know if you have other tips/questions! 😊
