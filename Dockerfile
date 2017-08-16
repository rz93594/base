# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM edr-poc.am.lilly.com/rhel7:latest

MAINTAINER tmw

USER root
#downgraph glibc libs as gcc seems to be ahead of the distro
RUN yum -y install gcc

ENV HTTP_PROXY http://40.0.40.10:9000
ENV HTTPS_PROXY http://40.0.40.10:9000


CMD /bin/bash -c 'while true; do echo sleeping 5s ; sleep 5; done'
