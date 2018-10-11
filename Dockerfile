FROM docker:git

LABEL maintainer="lixin <1045909037@qq.com>"

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g" /etc/apk/repositories && apk update \
    && apk add --no-cache tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
