FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get update && apt-get -y upgrade \
 bash-completion \
 build-essential \
 curl \
 git \
 git-core \
 golang \
 htop \
 locales \
 man \
 nmap \
 python3-pip \
 ruby-full \
 strace \
 sudo \
 tig \
 vim \
 wget \ 
 terminator
#
#
RUN locale-gen en_US.UTF-8
RUN adduser --disabled-password -gecos '' ubuntu
RUN adduser ubuntu sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER ubuntu
# Hush login messages
RUN touch ~/.hushlogin
WORKDIR /home/ubuntu

 