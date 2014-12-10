FROM ubuntu:14.04
MAINTAINER elmundio87

RUN apt-get update
RUN apt-get install ircd-irc2 
RUN rm /etc/ircd/ircd.conf
RUN rm /etc/ircd/ircd.motd

ADD ircd.motd /etc/ircd/ircd.motd
ADD ircd.conf /etc/ircd/ircd.conf


CMD service ircd-irc2 start | tail


EXPOSE 6667:6667