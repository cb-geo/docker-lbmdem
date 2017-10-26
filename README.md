# Docker image for Rockable

[![Docker hub](https://img.shields.io/badge/docker--hub-cbgeo--rockable-ff69b4.svg)](https://hub.docker.com/r/cbgeo/rockable)
[![quay image](https://img.shields.io/badge/quay--image-cbgeo--rockable-ff69b4.svg)](https://quay.io/repository/cbgeo/rockable)
[![](https://images.microbadger.com/badges/image/cbgeo/rockable.svg)](http://microbadger.com/images/cbgeo/rockable)

## Tools
* Clang
* CMake
* Eigen 3
* GCC 6
* Vim

# Using the docker image
* The docker image can be used directly from the Docker Hub or Quay.io
* Pull the docker image `docker pull cbgeo/rockable` or `docker pull quay.io/cbgeo/rockable`
* To launch the `cbgeo/ca-abm`  docker container, run `docker run -ti cbgeo/rockable:latest /bin/bash` or `docker run -ti quay.io/cbgeo/rockable:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "cbgeo/rockable" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.
