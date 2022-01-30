FROM node:17-alpine

ENV VERSION=4.0.2

# Install dependencies
RUN \
    apk --no-cache --update add \
    bash \
    curl \
    git \
    gnupg \
    nano \
    #    nodejs \
    openssh-client \
    wget

WORKDIR /opt/code-server

RUN \
    curl -L https://github.com/cdr/code-server/releases/download/v$VERSION/code-server-$VERSION-linux-amd64.tar.gz | tar xz --strip-components 1

RUN \
    rm ./node ./code-server ./lib/node && \
    #    mv code-server-$VERSION-linux-amd64 /usr/lib/code-server
    sed -i 's/"$ROOT\/lib\/node"/node/g'  ./bin/code-server

#RUN \
#    wget https://github.com/cdr/code-server/releases/download/v$VERSION/code-server-$VERSION-linux-amd64.tar.gz
#    tar x -zf code-server-$VERSION-linux-amd64.tar.gz
#    rm code-server-$VERSION-linux-amd64.tar.gz && \
#    rm code-server-$VERSION-linux-amd64/node && \
#    rm code-server-$VERSION-linux-amd64/code-server && \
#    rm code-server-$VERSION-linux-amd64/lib/node && \
#    mv code-server-$VERSION-linux-amd64 /usr/lib/code-server
#sed -i 's/"$ROOT\/lib\/node"/node/g'  /usr/lib/code-server/bin/code-server

#ENTRYPOINT ["/opt/code-server/bin/code-server"]
#CMD ["--bind-addr 0.0.0.0:8080 --auth none"]