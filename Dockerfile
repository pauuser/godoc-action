FROM golang:alpine 

ENV GOPATH /
RUN go install -v golang.org/x/tools/cmd/godoc@latest
COPY ./main.bash /bin/main.bash

RUN ls
RUN pwd

CMD ["/bin/main.bash"]
