FROM ubuntu
RUN apt-get update -qq && \
    apt-get install -qqy tor && \
	sed -i 's/#SOCKSPort 9050/SOCKSPort 0.0.0.0:9050/g' /etc/tor/torrc
EXPOSE 9050
ENTRYPOINT ["/usr/sbin/tor"]
