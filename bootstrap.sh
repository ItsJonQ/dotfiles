# bootstrap.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Symlinks all the dotfiles!

for file in .*; do
  if [[ -f $file ]]; then
    rsync -ah --no-perms "$file" ~/"$file"
    echo Added "$file" to ~/;
  fi
done
