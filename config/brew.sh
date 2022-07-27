# brew.sh
# Install all the homebrew things
# @itsjonq
# ============================================================================
# Inspired by Mathias!
# https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
# ============================================================================

echo "Starting brew setup…"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
# brew install homebrew/dupes/openssh # Messed up on Mac OS Sierra
brew install homebrew/dupes/screen
# brew install homebrew/php/php56 --with-gmp

# Install brew things
# brew install bradp/vv/vv
brew install ffmpeg
brew install fzf
brew install git
# brew install googler
# brew install homebrew/php/wp-cli
# brew install homebrew/php
brew install hub
# brew install imagemagick --with-webp
# brew install mariadb
brew install macvim
# brew install mongodb
brew install mplayer
# brew install mpv
brew install neovim
# brew install php
# brew install pow
# brew install ranger
brew install rbenv
brew install ripgrep
# brew install shpotify
brew install the_silver_searcher
brew install tree
# brew install tmux
# brew install watchman
brew install x264
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup

echo "Brew setup complete!"
