FROM alpine:3.8
ADD restore.sh /
RUN apk --update add postgresql-client=10.4-r0 openssl=1.0.2o-r2 && rm -rf /var/cache/apk/*
ENTRYPOINT [ "/restore.sh" ]
