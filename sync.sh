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

# Prompt feedback
# echo "Dotfiles synced."
