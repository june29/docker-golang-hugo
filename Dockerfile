FROM golang:latest

RUN set -x && \
    go get github.com/magefile/mage && \
    go get -d github.com/gohugoio/hugo && \
    cd ${GOPATH:-$HOME/go}/src/github.com/gohugoio/hugo && \
    mage vendor && \
    mage install
