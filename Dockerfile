FROM larsks/nsd

COPY check-nsd-config.sh /bin/check-nsd-config
ENTRYPOINT ["/bin/check-nsd-config"]
