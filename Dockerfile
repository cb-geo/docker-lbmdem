FROM fedora:latest
MAINTAINER Krishna Kumar <kks32@cam.ac.uk>

# Update to latest packages, remove vim-minimal & Install Git, GCC, Clang, Autotools and VIM
RUN dnf update -y && \
    dnf remove -y vim-minimal python sqlite && \
    dnf install -y automake clang cmake cppcheck findutils gcc gcc-c++ git make valgrind vim && \
    dnf clean all

# Create a user cbgeo
RUN useradd cbgeo
USER cbgeo

# Create a research directory
RUN mkdir -p /home/cbgeo/research

# Done
WORKDIR /home/cbgeo/research
