FROM alpine:3.8
ADD restore.sh /
RUN apk --update add postgresql-client=10.4-r0 && rm -rf /var/cache/apk/*
ENTRYPOINT [ "/restore.sh" ]