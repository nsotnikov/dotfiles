# Dotfiles
A personal set of configuration files.

## Install on clean installation of MacOS

### Update and install Command Line Tools:

    sudo softwareupdate -i -a
    xcode-select --install

### Clone and install dotfiles:

    git clone https://github.com/nsotnikov/dotfiles.git ~/.dotfiles

    # Use ssh if already set up
    git clone git@github.com:nsotnikov/dotfiles.git ~/.dotfiles

### Create symlinks in the home direcotry

    ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig;
    ln -sf ~/.dotfiles/.p10k.zsh ~/.p10k.zsh;
    ln -sf ~/.dotfiles/.zshrc ~/.zshrc;
    mkdir -p ~/.composer && ln -sf ~/.dotfiles/.composer/config.josn ~/.composer/config.json;

### Install Homebrew and bundle
https://docs.brew.sh/Installation

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle --file ~/.dotfiles/Brewfile

### Install Oh My Zsh framework
https://github.com/ohmyzsh/ohmyzsh#basic-installation

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

Oh My Zsh plugins:
https://github.com/zsh-users

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

### Install Powerlevel10k Zsh theme  
https://github.com/romkatv/powerlevel10k#oh-my-zsh

1. Clone the repository:

        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

2. Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.


### Additional installed apps and tools

- Amphetamine, prevent machine from sleeping
- Blackmagic Disk Speed, disk I/O test tool
- Logi Options, mouse drivers ans settings
- Unsplash, dynamic backgound wallpapers

### defaults
https://macos-defaults.com/#%F0%9F%92%BB-list-of-commands

    defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
    defaults write com.apple.dock "tilesize" -int "42"
    killall Finder

---

## Common tasks

Update brew file

    brew bundle dump --describe --force --file ~/.dotfiles/Brewfile

---

## TODO List

- Create automated installation via Makefile