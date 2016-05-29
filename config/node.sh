# npm installer
# @itsjonq

echo "Starting npm setup…"

# Removes progress bar from npm
# This speeds things up!
npm set progress=false

# Install global npm things
npm install babel -g
npm install bower -g
npm install express -g
npm install grunt-cli -g
npm install gulp-cli -g
npm install webpack -g
npm install yo -g

echo "npm setup complete!"
