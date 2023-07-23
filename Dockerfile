FROM alpine:latest

USER root
RUN apk update \
    && apk add tor

COPY torrc etc/tor/torrc

RUN chown -R tor etc/tor
USER tor

CMD ["tor", "-f", "etc/tor/torrc"]