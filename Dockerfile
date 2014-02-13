FROM moul/tmux
MAINTAINER Manfred Touron m@42.am

RUN apt-get -qq -y update && \
    apt-get -qq -y install weechat
RUN useradd -m -d /weechat weechat
ADD command /root/command
