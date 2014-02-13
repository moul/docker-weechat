FROM moul/tmux
MAINTAINER Manfred Touron m@42.am

RUN apt-get update && \
    apt-get -qq -y install python-software-properties && \
    add-apt-repository ppa:nesthib/weechat-stable && \
    apt-get -qq -y update && \
    apt-get clean

ENV TERM screen-256color
ENV LANG C.UTF-8

RUN apt-get -qq -y install weechat && \
    apt-get clean

VOLUME ["/weechat/.weechat"]

RUN useradd -m -d /weechat weechat
ADD command /root/command

EXPOSE 8000
