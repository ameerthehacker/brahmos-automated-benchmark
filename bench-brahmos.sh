if [[ -z $1 ]]
then
  echo "oops! you need to provide the absolute path of your local brahmos repo"
  exit 1
fi

if [[ -z $2 ]]
then
  docker run -v $1:/brahmos brahmos-automated-benchmark:v0.0.1
else
  docker run -v $1:/brahmos ameerthehacker/brahmos-automated-benchmark:v0.0.1
fi
