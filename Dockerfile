FROM ubuntu:18.04
MAINTAINER ffdixon@bigbluebutton.org

RUN echo 'Acquire::http::Proxy "http://159.203.59.145:3142 ";'  > /etc/apt/apt.conf.d/01proxy
RUN apt-get update && apt-get -y dist-upgrade

# Configure Services and Port
COPY start.sh /start.sh
CMD ["./start.sh"]

