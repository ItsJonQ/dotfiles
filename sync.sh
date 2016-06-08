# sync.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Same thing as bootstrap.sh, but without logs

for file in "$HOME/dotfiles/.*"; do
  if [[ -f $file ]]; then
    rsync -ah --no-perms "$file" ~/"$file"
  fi
done
