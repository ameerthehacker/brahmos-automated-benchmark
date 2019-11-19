cd /benchmarking-tool/frameworks/keyed/react
npm install
npm run build-prod

cd /benchmarking-tool/frameworks/keyed/preact
npm install
npm run build-prod

cd /benchmarking-tool/webdriver-ts
npm run bench -- keyed/react keyed/preact --headless --count $1