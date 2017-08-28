#!/bin/bash
#@autho Eric Hao

[[ -d ~/tmp ]] || mkdir ~/tmp
[[ -d ~/code ]] || mkdir ~/code

# check if the brew is installed and update if 'yes'

if type brew > /dev/null; then
	ehco "\e36mHomeBrew Exists";
else
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/HomeBrew/install/master/install)";
fi;
brew update && cleanup;
brew install zsh zsh-completion;
# change the shell to zsh
chsh -s `which zsh`

# instll oh-my-zsh and copying .zshrc
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# initialized the brew cask
brew cask tap
# install and configure visualstudiocode
brew cask install visual-studio-code


