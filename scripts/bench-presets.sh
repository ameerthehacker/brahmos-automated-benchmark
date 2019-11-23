cd /benchmarking-tool/frameworks/keyed/react
npm install
npm run build-prod

cd /benchmarking-tool/frameworks/keyed/preact
npm install
npm run build-prod

cd /benchmarking-tool/webdriver-ts
npm run bench -- keyed/react --headless --count $1
npm run bench -- keyed/preact --headless --count $1
