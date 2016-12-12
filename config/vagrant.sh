# vagrant.sh
# Install all the vagrant things
# @itsjonq
# ============================================================================
# Inspired by Mathias!
# https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
# ============================================================================

echo "Starting Vagrant setup…"

vagrant plugin install deep_merge
# For VVV
# Source: https://github.com/Varying-Vagrant-Vagrants/VVV
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-triggers
vagrant plugin install vagrant-vbguest

echo "Vagrant setup complete!"
