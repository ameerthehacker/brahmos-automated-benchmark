source /benchmarking-tool/start-web-server.sh

# Benchmark the preset
source  /benchmarking-tool/bench-presets.sh 5
# Benchmark brahmos
source /benchmarking-tool/bench-brahmos.sh ${1-1}
# Publish the results
source /benchmarking-tool/build-results.sh
