# npm installer
# @itsjonq

echo "Starting npm setup…"

# Removes progress bar from npm
# This speeds things up!
npm set progress=false

# Update all global node packages
npm update -g

# Install global npm things
npm install babel -g
npm install babel-eslint -g
npm install bower -g
npm install eslint -g
npm install eslint-plugin-react -g
npm install express -g
npm install grunt-cli -g
npm install gulp-cli -g
npm install np -g
npm install npm-check-updates -g
npm install pm2 -g
npm install webpack -g
npm install yo -g

echo "npm setup complete!"
