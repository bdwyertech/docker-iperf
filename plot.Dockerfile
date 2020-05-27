FROM alpine:latest

RUN apk add iperf3 bash gnuplot jq

ADD https://raw.githubusercontent.com/kaihendry/iperf3chart/master/plot.sh /usr/local/bin/plot.sh
ADD https://raw.githubusercontent.com/kaihendry/iperf3chart/master/aplot.sh /usr/local/bin/aplot.sh
ADD https://raw.githubusercontent.com/kaihendry/iperf3chart/master/bw-test.sh /usr/local/bin/bw-test.sh
ADD https://raw.githubusercontent.com/dcaratti/iperf-gnuplot/master/iperf_gnuplot.sh /usr/local/bin/iperf_gnuplot.sh

RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["/bin/bash"]
