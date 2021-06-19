FROM alpine:latest AS build

RUN apk update
RUN apk add build-base make

RUN wget https://github.com/dmshaw/paperkey/releases/download/v1.6/paperkey-1.6.tar.gz
RUN tar -xzf paperkey-1.6.tar.gz

WORKDIR /paperkey-1.6
RUN ./configure
RUN make
RUN make install

FROM alpine:latest

COPY --from=build /usr/local/bin/paperkey /usr/local/bin/paperkey

ENTRYPOINT ["/usr/local/bin/paperkey"]
CMD ["--help"]
