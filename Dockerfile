FROM fedora:latest
MAINTAINER Krishna Kumar <kks32@cam.ac.uk>

# Update to latest packages, remove vim-minimal & Install Git, GCC, Clang, Autotools and VIM
RUN dnf update -y && \
    dnf remove -y vim-minimal python sqlite && \
    dnf install -y clang cmake cppcheck eigen3-devel findutils gcc gcc-c++ git make valgrind vim && \
    dnf clean all

# Create a user cbgeo
RUN useradd cbgeo
USER cbgeo

# Create a research directory and clone git repo of lbmdem code
RUN mkdir -p /home/cbgeo/research && cd /home/cbgeo/research && git clone https://github.com/cb-geo/lbm-dem.git

# Change to lbmdem directory
WORKDIR /home/cbgeo/research/lbm-dem

