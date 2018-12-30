FROM alpine
RUN apk update && \
      apk upgrade && \
      apk add --no-cache miniupnpc
ENV PORT 8123
COPY set-upnp.sh /

CMD ["sh", "-c", "/set-upnp.sh $PORT"]
