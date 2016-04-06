FROM ubuntu:wily

RUN apt-get -qq update && \
    apt-get -qq install -y --no-install-recommends ca-certificates curl && \
    curl https://install.meteor.com/ | sh && \
    locale-gen en_US.UTF-8 && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

EXPOSE 3000
ENTRYPOINT ["meteor"]
