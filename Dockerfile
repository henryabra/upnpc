FROM alpine
RUN apk update && \
      apk upgrade && \
      apk add --no-cache miniupnpc
COPY set-upnp.sh /
CMD ["sh" , "set-upnp.sh"]