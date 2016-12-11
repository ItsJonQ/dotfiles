# sync.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Quietly sync dotfiles

for file in $HOME/dotfiles/.*; do
  if [[ -f $file ]]; then
    F=`basename "$file"`
    rsync -ah --no-perms "$F" "$HOME"/"$F"
  fi
done

# Sync hammerspoon
rsync -ah --no-perms .hammerspoon/ "$HOME"/
echo Added .hammerspoon/ to "$HOME";

# Prompt feedback
# echo "Dotfiles synced."
