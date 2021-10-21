 #!/bin/sh

docker build -t ja_multilabel ./Docker
docker run --gpus all --privileged -it -p 8888:8888 -v ${PWD}:/tf/${PWD##*/} -w /tf/${PWD##*/} ja_multilabel