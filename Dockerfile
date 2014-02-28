FROM ubuntu
MAINTAINER zimbatm <zimbatm@zimbatm.com>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-get update -qy
RUN apt-get install wget gdebi-core openjdk-6-jre-headless coreutils procps -qy
# CloudFront's SSL is misconfigured
RUN wget --secure-protocol=SSLv3 https://dsy5cjk52fz4a.cloudfront.net/aerofsts-installer.deb && gdebi -n aerofsts-installer.deb && rm aerofsts-installer.deb
# As specified in /etc/sysctl.d/30-aerofsts-increase-inotify-limit.conf
RUN sysctl -w fs.inotify.max_user_watches=1048576
