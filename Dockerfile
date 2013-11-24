FROM ubuntu
MAINTAINER Manfred Touron m@42.am

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise main universe" >> /etc/apt/sources.list
RUN apt-get -q -y update
RUN apt-get install -y weechat

CMD ["weechat-curses"]
