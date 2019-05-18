brew update 

brew install zsh
chsh -s $(which zsh);

brew cask install iterm2
curl -L https://iterm2.com/misc/install_shell_integration.sh | zsh

brew install git 
brew install git-flow
brew install tmux 
brew install wget
brew install tree
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew install terminal-notifier

# Pyenv and dependencies
brew install readline xz
brew install zlib
xcode-select --install
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

brew install pyenv
brew install pyenv-virtualenv
