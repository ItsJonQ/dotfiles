# bootstrap.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Add dotfiles to root

for file in "$HOME/dotfiles/.*"; do
  if [[ -f $file ]]; then
    rsync -ah --no-perms "$file" ~/"$file"
    echo Added "$file" to ~/;
  fi
done
