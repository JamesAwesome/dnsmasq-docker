FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install dnsmasq
RUN apt-get clean
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
