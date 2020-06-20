FROM haproxy:1.8

RUN apt update -y && apt install bash ca-certificates rsyslog cron -y
RUN mkdir -p /etc/rsyslog.d/ &&  \
        touch /var/log/haproxy.log &&  \
        ln -sf /dev/stdout /var/log/haproxy.log

ADD ./etc/ /etc/

# Include our custom entrypoint that will the the job of lifting
# rsyslog alongside haproxy.
ADD ./entrypoint.sh /usr/local/bin/entrypoint

EXPOSE 80 443

# Set our custom entrypoint as the image's default entrypoint
ENTRYPOINT [ "entrypoint" ]

# Make haproxy use the default configuration file
CMD [ "-f", "/etc/haproxy.cfg" ]
