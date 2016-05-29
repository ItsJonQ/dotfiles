# cask.sh
# Install apps via Brew
# @itsjonq

echo "Starting brew cask install…"

# Add cask to brew
brew tap caskroom/cask

# Update firest
brew cask update

# Install apps!
brew cask install 1password
brew cask install alfred
brew cask install divvy
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install insync
brew cask install google-chrome
brew cask install karabiner
brew cask install licecap
brew cask install karabiner
brew cask install onyx
brew cask install private-internet-access
brwe cask install screenhero
brew cask install sketch
brew cask install skitch
brew cask install spotify
brew cask install sublime-text
brew cask install telegram
brew cask install vlc

# Cleanup!
brew cask cleanup

echo "Brew cask installation complete!"

