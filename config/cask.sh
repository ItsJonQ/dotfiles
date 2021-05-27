# cask.sh
# Install apps via Brew
# @itsjonq

echo "Starting brew cask install…"

# Add cask to brew
# brew tap caskroom/cask

# Update firest
# brew cask update

# Install apps!
brew install 1password
brew install alfred
brew install firefox
brew install hammerspoon
# brew install insync
# brew install iterm2
# brew install google-chrome
# brew install java
brew install karabiner-elements
# brew install kitty
brew install licecap
# brew install onyx
# brew install private-internet-access
# brew install remote-play
# brew install robo-3t
# brew install screenflow
brew install slack
# brew install sketch
# brew install skype
brew install spotify
brew install sublime-text
brew install telegram
# brew install tunnelblick
# brew install vagrant
# brew install virtualbox
brew install visual-studio-code
brew install vlc
brew install zoom

# Cleanup!
brew cask cleanup

echo "Brew cask installation complete!"
