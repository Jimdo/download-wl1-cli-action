FROM alpine:latest

RUN apk add --no-cache ca-certificates curl jq

COPY install_wl1_cli.sh /install_wl1_cli.sh

ENTRYPOINT [ "/install_wl1_cli.sh" ]
