# bootstrap.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Add dotfiles to root

for file in $HOME/dotfiles/.*; do
  if [[ -f $file ]]; then
    F=`basename "$file"`
    rsync -ah --no-perms "$F" "$HOME"/"$F"
    echo Added "$F" to "$HOME";
  fi
done

# Sync hammerspoon
rsync -ah --no-perms .hammerspoon "$HOME"/
echo Added .hammerspoon/ to "$HOME";

# Sync atom
rsync -ah --no-perms .atom "$HOME"/
echo Added .atom/ to "$HOME";
