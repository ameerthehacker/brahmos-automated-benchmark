# Login to dockerhub
docker login
# Remove old image
docker rmi ameerthehacker/brahmos-automated-benchmark:v0.0.1 -f
# Build the new image
source ./build-image.sh
# Tag the new image
docker tag brahmos-automated-benchmark:v0.0.1 ameerthehacker/brahmos-automated-benchmark:v0.0.1
# Push the image
docker push