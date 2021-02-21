FROM ubuntu:focal
MAINTAINER Zulu Enterprise Container Images <azul-zulu-images@microsoft.com>

RUN apt-get -qq update && \
    apt-get -qq -y --no-install-recommends install gnupg software-properties-common && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9 && \
    apt-add-repository "deb http://repos.azul.com/azure-only/zulu/apt stable main" && \
    apt-get -qq update && \
    apt-get -qq -y dist-upgrade && \
    apt-get -qq -y --no-install-recommends install zulu-8-azure-jre=8.52.0.23* && \
    apt-get -qq -y purge gnupg software-properties-common && \
    apt -y autoremove && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/zre-8-azure-amd64
