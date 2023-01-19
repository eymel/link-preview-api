

FROM golang:1.6.1

COPY main.go ./


RUN go get github.com/tools/godep

RUN godep save


ENTRYPOINT ["godep"]
CMD ["-h"]