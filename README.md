# Brahmos Automated Benchmark

This repo contains the Dockerfile, scripts for container image which packs all tools to benchmark Brahmos

## Usage

1. Install docker
2. Build the docker image

```sh
sh ./build-image.sh
```

3. Benchmark brahmos

```sh
./bench-brahmos.sh /path/to/brahmos-repo
```
__/path/to/brahmos-repo__ must be an absolute path to your local brahmis repo

You can also benchmark brahmos without building the local image as follows

```sh
./bench-brahmos.sh /path/to/brahmos-repo online
```

Sit back and relax till the benchmark runs, then you can find the benchmark results under __/path/to/brahmos-repo/bench-results__