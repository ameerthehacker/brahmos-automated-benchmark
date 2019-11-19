npm start &

echo 'Waiting for webserver to start...'
# Wait until the server is up and running
while [ `curl -sL -w "%{http_code}\\n" "http://localhost:8080/" -o /dev/null` -eq "000" ]
do
	:
done
echo 'Yaah! webserver started'

npm run clean

source /benchmarking-tool/bench-brahmos.sh ${1-1}
source /benchmarking-tool/bench-presets.sh ${1-1}
source /benchmarking-tool/build-results.sh
