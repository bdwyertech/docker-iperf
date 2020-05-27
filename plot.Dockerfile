FROM alpine:latest

RUN apk add iperf3 bash gnuplot jq

ADD https://raw.githubusercontent.com/kaihendry/iperf3chart/master/plot.sh /usr/local/bin/plot.sh
ADD https://raw.githubusercontent.com/kaihendry/iperf3chart/master/aplot.sh /usr/local/bin/aplot.sh
ADD https://raw.githubusercontent.com/kaihendry/iperf3chart/master/bw-test.sh /usr/local/bin/bw-test.sh

RUN chmod +x /usr/local/bin/*.sh

# ENTRYPOINT ["iperf3"]
#
# CMD ["--server", "--json", "--verbose"]
