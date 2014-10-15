FROM ubuntu:14.04
MAINTAINER Sergey Smirnov <smirnoffs@gmail.com>
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get -y install g++ subversion cmake make libssl-dev wget
RUN cd /tmp
RUN svn co --username anonymous --password "" https://svn.rtmpd.com/crtmpserver/trunk crtmpserver

EXPOSE 1935
EXPOSE 1234

RUN cd /crtmpserver/builders/cmake/

RUN cmake .
RUN make
RUN ./crtmpserver/builders/cmake/crtmpserver/crtmpserver ./crtmpserver/builders/cmake/crtmpserver/crtmpserver.lua

