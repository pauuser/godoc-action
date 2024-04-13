FROM golang:alpine 

ENV GOPATH /
RUN go install -v golang.org/x/tools/cmd/godoc@latest
COPY ./main.bash /bin/main.bash

RUN apk add --no-cache bash curl git wget

CMD bash /bin/main.bash
