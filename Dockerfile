FROM alpine:edge
RUN apk --no-cache add inotify-tools bash perf bcc-tools bpftrace-tools sysstat procps numactl-tools ethtool perl git
RUN git clone https://github.com/brendangregg/FlameGraph.git

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
