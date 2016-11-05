FROM alpine:3.2

MAINTAINER Philip Jay <phil@jay.id.au>

ENV TZ Australia/Melbourne

RUN apk update \
 && apk upgrade \
 && apk add \
      bash \
      curl \
 && rm -rf /var/cache/apk/*

ADD downloader.sh /opt/

RUN chmod a+rx /opt/downloader.sh

RUN adduser -H -S downloader

USER downloader

CMD [ "/opt/downloader.sh" ]
