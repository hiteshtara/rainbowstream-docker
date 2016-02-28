FROM alpine:latest
MAINTAINER Bart Bania <contact@bartbania.com>
 
RUN apk update && \
    apk add build-base ca-certificates freetype freetype-dev openjpeg-dev python python-dev py-pip zlib-dev && \
    pip install -q pillow==2.8.0 rainbowstream
RUN rm -rf /var/cache/apk/* \
    apk del build-base freetype-dev openjpeg-dev python-dev zlib-dev

COPY ./.rainbow_config.json /root/.rainbow_config.json

ENTRYPOINT [ "rainbowstream" ]

