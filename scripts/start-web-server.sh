cd ~/benchmarking-tool

npm start &

echo 'Waiting for webserver to start...'
# Wait until the server is up and running
while [ `curl -sL -w "%{http_code}\\n" "http://localhost:8080/" -o /dev/null` -eq "000" ]
do
	:
done
echo 'Yaah! webserver started'