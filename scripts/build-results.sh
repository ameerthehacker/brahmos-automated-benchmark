# Gather the results
cd /benchmarking-tool/webdriver-ts
npm run results

# Build the results website
cd /benchmarking-tool/webdriver-ts-results
npm run build-prod

# Deploy the results
if [[ -z $DEPLOY ]]
then
  mkdir -p /brahmos/bench-results
  cp -r /benchmarking-tool/webdriver-ts-results/dist/* /brahmos/bench-results
else
  netlify deploy -d /benchmarking-tool/webdriver-ts-results/dist -s "$SITE_ID" --auth "$NETLIFY_AUTH_TOKEN"
fi