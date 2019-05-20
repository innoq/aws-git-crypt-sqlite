FROM innoq/git-crypt-sqlite

LABEL maintainer="dimitrij.drus@innoq.com"

ENV AWS_CLI_VERSION=1.16.161
    
RUN apk --no-cache update && \
    apk --no-cache add curl ca-certificates groff less python3 && \
    pip3 install --upgrade pip && \
    pip3 --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*
