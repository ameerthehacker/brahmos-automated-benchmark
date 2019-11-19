run-local: docker-build-image
	docker run -v ${PWD}/lib:/benchmarking-tool/frameworks/keyed/brahmos/lib -it brahmos-automated-benchmark:v0.0.1 sh
build-docker-image:
	docker build . -t brahmos-automated-benchmark:v0.0.1