FROM alpine:3.5

LABEL maintainer "tomwei7g@gmail.com"

RUN apk update && apk add privoxy

EXPOSE 8118

ENTRYPOINT ["privoxy", "--no-daemon"]

CMD ["/etc/privoxy/config"]
