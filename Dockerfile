FROM moul/tmux
MAINTAINER Manfred Touron m@42.am

# Inspired by https://github.com/creack/weechat-docker/blob/master/Dockerfile

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

EXPOSE 8000 8001

CMD ["run-docker-tmux"]
