FROM miksago/ubuntu-go

MAINTAINER  Ross Kukulinski <ross@getyodlr.com>

WORKDIR /root

RUN git clone https://github.com/coreos/fleet.git
RUN cd fleet && ./build
RUN cp fleet/bin/fleetctl /usr/bin/fleetctl

ENTRYPOINT ["/usr/bin/fleetctl"]
CMD ["--version"]
