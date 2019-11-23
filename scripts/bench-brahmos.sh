# update the dependencies
node update-brahmos.js

cd ~/benchmarking-tool/frameworks/keyed/brahmos
npm install
npm run build-prod

cd ~/benchmarking-tool/webdriver-ts
npm run bench -- keyed/brahmos --headless --count $1
