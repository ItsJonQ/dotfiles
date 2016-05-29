# gem installer
# @itsjonq

echo "Starting gem setup…"

# Update to latest gems
gem update --system

# Install global ruby things
gem install bundler --no-rdoc --no-ri
gem install jekyll --no-rdoc --no-ri
gem install powder --no-rdoc --no-ri
gem install rails --no-rdoc --no-ri
# gem install sass
gem install s3_website --no-rdoc --no-ri

# Cleanup gems
gem cleanup

echo "Gem setup complete!"

