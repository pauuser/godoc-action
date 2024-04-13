FROM golang:1.13-buster

ENV GOPATH /
RUN go install -v golang.org/x/tools/cmd/godoc@latest
COPY ./main.bash /bin/main.bash

CMD ["/bin/main.bash"]
