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
npm install babel-cli -g
npm install bower -g
npm install create-react-app -g
npm install eslint -g
npm install eslint-config-airbnb -g
npm install eslint-plugin-import -g
npm install eslint-plugin-jsx-a11y -g
npm install eslint-plugin-react -g
npm install express -g
npm install grunt-cli -g
npm install gulp-cli -g
npm install jest -g
npm install jshint -g
npm install mocha -g
npm install np -g
npm install npm-check-updates -g
npm install prettier -g
npm install pm2 -g
npm install serverless -g
npm install surge -g
npm install webpack -g
npm install @storybook/cli -g

echo "npm setup complete!"
