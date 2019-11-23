source ./start-web-server.sh

# Benchmark the preset
source ./bench-presets.sh ${1-1}
# Benchmark brahmos
source ./bench-brahmos.sh ${1-1}
# Publish the results
source ./build-results.sh
