FROM ubuntu:14.04
MAINTAINER Sergey Smirnov smirnoffs@gmail.com
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install g++ subversion cmake make libssl-dev -y
RUN cd /tmp
RUN svn co --username anonymous --password "" https://svn.rtmpd.com/crtmpserver/trunk crtmpserver
cd crtmpserver/builders/cmake/

RUN ./run