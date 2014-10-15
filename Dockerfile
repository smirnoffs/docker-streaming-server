FROM ubuntu:14.04
MAINTAINER Sergey Smirnov <smirnoffs@gmail.com>
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get -y install g++ subversion cmake make libssl-dev 
RUN cd /tmp
RUN svn co --username anonymous --password "" https://svn.rtmpd.com/crtmpserver/trunk crtmpserver
RUN cd crtmpserver/builders/cmake/

RUN chmod +x run
RUN ./run