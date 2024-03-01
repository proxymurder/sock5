FROM alpine:latest

USER root

RUN apk update \
    && apk add \
    tor

RUN echo "SocksPort 0.0.0.0:9050" > /etc/tor/torrc

RUN chown -R tor /etc/tor

USER tor

CMD ["tor", "-f", "/etc/tor/torrc"]
