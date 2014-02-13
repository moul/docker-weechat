FROM moul/tmux
MAINTAINER Manfred Touron m@42.am

RUN apt-get -qq -y install software-properties-common && \
    add-apt-repository ppa:nesthib/weechat-stable && \
    apt-get -qq -y update && \
    apt-get clean

RUN apt-get -qq -y install weechat && \
    apt-get clean

RUN useradd -m -d /weechat weechat
ADD command /root/command
