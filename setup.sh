# check if home brew is isntalled
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# install nerd font
brew search '/font-caskaydia-cove-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

# install lsd
brew install lsd

# install fish
brew install fish

# set fish as the default shell
chsh -s $(which fish)
