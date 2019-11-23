# update the dependencies
node /benchmarking-util/update-brahmos.js

# build the brahmos bundle
cd /brahmos
yarn
npm run bundle

# copy the bundle over to benchmarking tool
mkdir -p /benchmarking-tool/frameworks/keyed/brahmos/lib
cp -r ./dist /benchmarking-tool/frameworks/keyed/brahmos/lib
cp ./package.json /benchmarking-tool/frameworks/keyed/brahmos/lib

cd /benchmarking-tool/frameworks/keyed/brahmos
npm install
npm run build-prod

cd /benchmarking-tool/webdriver-ts
npm run bench -- keyed/brahmos --headless --count $1
