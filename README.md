# Docker image for Lattice Boltzmann - Discrete Element Method
> Cambridge-Berkeley Computational Geomechanics group

[![Docker hub](https://img.shields.io/badge/docker--hub-cbgeo--lbmdem-ff69b4.svg)](https://hub.docker.com/r/cbgeo/lbmdem)
[![quay image](https://img.shields.io/badge/quay--image-cbgeo--lbmdem-ff69b4.svg)](https://quay.io/repository/cbgeo/lbmdem)
[![Build status](https://api.travis-ci.org/cb-geo/docker-lbmdem.svg)](https://api.travis-ci.org/cb-geo/docker-lbmdem.svg)
[![](https://images.microbadger.com/badges/image/cbgeo/lbmdem.svg)](http://microbadger.com/images/cbgeo/lbmdem)

## Tools
* Clang
* CMake
* Eigen 3
* GCC 6
* Vim

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "cbgeo/lbmdem" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.

# Using the docker image
* The docker image can be used directly from the Docker Hub or Quay.io
* Pull the docker image `docker pull cbgeo/lbmdem` or `docker pull quay.io/cbgeo/lbmdem`
* To launch the `cbgeo/ca-abm`  docker container, run `docker run -ti cbgeo/lbmdem:latest /bin/bash` or `docker run -ti quay.io/cbgeo/lbmdem:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`
