source /benchmarking-util/start-web-server.sh

# Benchmark the preset
source /benchmarking-util/bench-presets.sh ${1-1}
# Benchmark brahmos
source /benchmarking-util/bench-brahmos.sh ${1-1}
# Publish the results
source /benchmarking-util/build-results.sh
