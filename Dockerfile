FROM index.alauda.cn/library/alpine:3.3
MAINTAINER Chen Nanfei <nfchen@alauda.io>

RUN apk add --update curl && rm -rf /var/cache/apk/*
ADD run.sh /
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
