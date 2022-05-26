FROM golang:1.18.2



RUN apt-get update \
    && apt-get install -y tzdata gcc bash vim curl \
    && update-ca-certificates \
    && curl -s https://packagecloud.io/install/repositories/golang-migrate/migrate/script.deb.sh | bash \
    && apt-get install -y migrate \
    && curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

WORKDIR /go/src/app

ENV TZ=Asia/Taipei
