#Collin's "install.sh" https://github.com/cfmeyers/dotfiles/blob/master/install/install.sh



# Install Chrome
# Install Spectacle
# Install SublimeText 2
# Install Xcode tools

# install homebrew 
# http://brew.sh/
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install GNU core utilities (OSX ones are outdated)
brew install coreutils

#Install recent versions of OSX tools
brew tap homebrew/dupes

brew install homebrew/dupes/grep
brew install zsh #install diff shell
brew install bash #updated version of bash
brew install git #installs latest version of git
brew install hub #for github
brew install the_silver_searcher #replacement for grep
brew install vim #updates vim

brew install fish #install fish shell

brew install postgresql #install DBs
brew install mysql
brew install sqlite

brew install node

#set fish as default shell
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish

#integrating symlnk with fish
ln -s ~/dotfiles/fish/fish.config ~/.config/fish/config.fish

#set up symlink "subl" for shortcut to SublimeText
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

#creating link to git config files
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/git/gitignore ~/.gitignore

#generate ssh keys https://help.github.com/articles/generating-ssh-keys/







