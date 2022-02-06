# Dotfiles
A personal set of configuration files.

## Install on clean installation of MacOS

### Update and install Command Line Tools:

    sudo softwareupdate -i -a
    xcode-select --install

### Clone and install dotfiles:

    git clone --recurse-submodules https://github.com/nsotnikov/dotfiles.git ~/.dotfiles
 
### Install Homebrew and bundle
https://docs.brew.sh/Installation

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle --file ~/.dotfiles/Brewfile

### Create symlinks in the home direcotry

    # Link promt configuration
    ln -sf ~/.dotfiles/.zshrc ~/.zshrc;
    ln -sf ~/.dotfiles/.bashrc ~/.bashrc;

    # Link addtional tools config
    ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig;

    # Link secrets, first set the backup folder variable
    ln -sf ${BACKUP_FOLDER}/.ssh ~/.ssh;
    ln -sf ${BACKUP_FOLDER}/.secrets ~/.dotfiles/.secrets;


### Install Oh My Zsh framework
https://github.com/ohmyzsh/ohmyzsh#basic-installation

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Additional installed apps and tools

- Amphetamine, prevent machine from sleeping
- Blackmagic Disk Speed, disk I/O test tool
- Logi Options, mouse drivers ans settings
- Unsplash, dynamic backgound wallpapers

### defaults, Change mac settings via command
https://macos-defaults.com/#%F0%9F%92%BB-list-of-commands

    defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
    defaults write com.apple.dock "tilesize" -int "42"
    killall Finder

---

## Common tasks

Update brew file

    brew bundle dump --describe --force --file ~/.dotfiles/Brewfile

Pull submodules changes 

    git submodule update --recursive

## Misc
You may want to compare promt loading speed, e.g. after configuration changes.
To do so just run:

    time zsh -i -c "echo -n"
    time bash -i -c "echo -n"

---

## TODO List

- Create automated installation via Makefile