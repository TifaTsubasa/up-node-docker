FROM centos:7

RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -
RUN yum install -yqq nodejs
RUN yum install -yqq git

RUN npm install -g pm2
RUN pm2 --version

VOLUME /var/app
WORKSPACE /var/app

EXPOSE 3000