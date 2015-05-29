FROM golang:latest

WORKDIR /root

RUN git clone https://github.com/coreos/fleet.git && \
  cd fleet && ./build && \
  cp bin/fleetctl /usr/bin/fleetctl

ADD curl.sh /root/curl.sh
RUN /root/curl.sh
ADD run.sh /root/run.sh

ENV S1="fleet.stackone.com"
ENV S2="fleet.stacktwo.com"

ENTRYPOINT ["/root/run.sh"]
