FROM ubuntu
MAINTAINER Manfred Touron m@42.am

RUN echo "deb http://archive.ubuntu.com/ubuntu/ precise main universe" >> /etc/apt/sources.list
RUN apt-get -q -y update
RUN apt-get install -y openssh-server weechat tmux
RUN mkdir /var/run/sshd
RUN echo "root:root" | chpasswd
EXPOSE 22
RUN useradd -m docker

ADD bashrc /root/.bashrc

CMD ["/usr/sbin/sshd", "-D"]
