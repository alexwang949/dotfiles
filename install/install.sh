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

# enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# set key repeat rate to blazing fast http://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

#set fish as default shell
sudo echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish

#if setting up on preconfig'd system, try:
#http://hackercodex.com/guide/install-fish-shell-mac-ubuntu/#basic-configuration
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

#integrating symlnk with fish
ln -s ~/dotfiles/fish/fish.config ~/.config/fish/config.fish

#set up symlink "subl" for shortcut to SublimeText

############SUBLIME TEXT 3 ########## http://olivierlacan.com/posts/launch-sublime-text-3-from-the-command-line/
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl


############SUBLIME TEXT 2
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

#creating link to git config files
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/git/gitignore ~/.gitignore

#generate ssh keys https://help.github.com/articles/generating-ssh-keys/



#VIIIMMM!!!!!!! ****************

#creating symlink for vim
ln -s ~/dotfiles/vimrc.vim ~/.vimrc

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle #setup directories
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim #download files using curl
#*** if fish config doesn't like, then run both commands separately.

#add this line to vimrc.vim, VERY TOP!
execute pathogen#infect()

#create color files directory inside vim
mkdir colors

#curl color files
curl https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim > jellybeans.vim
#setup directory control
$ cd ~/.vim
$ git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# set up tap completion
$ cd ~/.vim
$ git clone https://github.com/ervandew/supertab.git 


# Configure SublimeText2 with Vintage Mode - https://www.sublimetext.com/docs/2/vintage.html
 cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/
git clone git@github.com:sublimehq/Vintage.git "Vintage Dev" 

1.In ST2, go to preferences/settings-user, add: "vintage_start_in_command_mode": true

2.Go to preferences/key-bindings-user, add:

{ "keys": ["k", "j"], "command": "exit_insert_mode",
	"context":
	[
		{ "key": "setting.command_mode", "operand": false },
		{ "key": "setting.is_widget", "operand": false }
	]
}

# Add Package Control in order to toggle between Vintage and Default mode for ST2.
# commands: cmd shift p, enable/disable package, vintage option
https://packagecontrol.io/installation



