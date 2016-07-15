FROM centos:7

RUN yum install -y git
RUN git --version